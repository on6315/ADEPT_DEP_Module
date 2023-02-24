#include "DEP_control.h"

#define CFR1_register 0x00
#define CFR2_register 0x01
#define frequency_register 0x03
#define phase_register 0x04
#define Sys_clk 250000000
#define pre_amplitude 1.2

#define IO_update_pin 36
#define Master_reset_pin 37

//     SG1.1,SG1.2,SG2.1,SG2.2,SG3.1,SG3.2,SG4.1,SG4.2,SG5.1,SG5.2,SG6.1,SG6.2,
int8_t SPI_pin_list[36] = { 39   ,38   ,41   ,40   ,43   ,42   ,45   ,44   ,47   ,46   ,49   ,48   ,
// R1.1,R1.3,R2.1,R2.3,R3.1,R3.3,R4.1,R4.3,R5.1,R5.3,R6.1,R6.3,
   35   ,19  ,33  ,18  ,31  ,17  ,29  ,16  ,27  ,15  ,25  ,14  ,
    //  R1.2,R2.2,R3.2,R4.2,R5.2,R6.2,
        2   ,3   ,4   ,5   ,6   ,7   ,
    //   R0DC,R1DC,R2DC,R3DC,R4DC,R5DC}
         59  ,58  ,57  ,56  ,55  ,54 };



//                      {MUX1.1,MUX1.2,MUX2.1,MUX2.2,MUX3.1,MUX3.2,MUX4.1,MUX4.2,MUX5.1,MUX5.2,MUX6.1,MUX6.2}
int8_t MUX_pin_list[12] = { 13    ,10    ,60    ,63    ,12    ,9     ,61    ,64    ,11    ,8     ,62    ,65 };


void DEP_control::start(){
    Serial.begin(9600); // opens serial port, sets data rate to 9600 bps
    
  //################################initializing the SPI pins
    pinMode(IO_update_pin, OUTPUT);
    digitalWrite(IO_update_pin, LOW);
    pinMode(Master_reset_pin, OUTPUT);
    digitalWrite(Master_reset_pin, LOW);
     delay(1000);
    digitalWrite(Master_reset_pin, HIGH);
     delay(1000);
    digitalWrite(Master_reset_pin, LOW);

    pinMode(50, OUTPUT);
    pinMode(51, OUTPUT);
    pinMode(52, OUTPUT);
    pinMode(53, OUTPUT);
    // ############################initializing all select pins
    for (int i = 0; i < 40; i++) {
        pinMode(SPI_pin_list[i], OUTPUT);
        digitalWrite(SPI_pin_list[i], HIGH);
    }
    for (int i = 0; i < 12; i++) {
        pinMode(MUX_pin_list[i], OUTPUT);
        digitalWrite(MUX_pin_list[i], LOW);
    }

    SPI.begin();
     SPI.beginTransaction(SPISettings(1400000, MSBFIRST, SPI_MODE0));
}

void DEP_control::spi_transmit(int pin, byte comand[9], int length){
    digitalWrite(SPI_pin_list[pin], LOW);
 Serial.println(SPI_pin_list[pin]);
    for (int i = 0; i < length; i++) {
        SPI.transfer(comand[i]);
        }

    digitalWrite(SPI_pin_list[pin], HIGH);
}

void DEP_control::init(int Signal) {
    if ((0 <= Signal) & (Signal <= 11)) {
       
        byte comand[9];
        comand[0] = CFR1_register;
        comand[1] = 0x00;
        comand[2] = 0b00001000;
        comand[3] = 0x00;
        comand[4] = 0b00000000;

        spi_transmit(Signal, comand, 5);

        comand[0] = CFR2_register;
        comand[1] = 0b00000000;
        comand[2] = 0b00000000;
        spi_transmit(Signal, comand, 3);
    }
    else {
        Serial.println("invalid Signal init()");
    }
}

void DEP_control::set_frequency(int Signal,unsigned long int frequency){
    if ((0 <= Signal) && (Signal <= 11)) {
        if ((0<=frequency)&&(frequency <= Sys_clk)) {
            
            byte comand[9];
            comand[0] = frequency_register;
            unsigned long int value = (4294967295 / Sys_clk) * frequency;
            comand[1] = value >> 24;
            comand[2] = value >> 16;
            comand[3] = value >> 8;
            comand[4] = value;

            spi_transmit(Signal, comand, 5);

        }
        else {
            Serial.println("invalid frequency");

        }
    }
    else {
        Serial.println("invalid Signal set_frequency");
    }

}
void DEP_control::set_phase(int Signal, int phase){
    if ((0 <= Signal) && (Signal <= 11)) {
        if ((0<= phase)&&(phase <= 360)) {
            byte comand[9];
            comand[0] = phase_register;
            unsigned long int value = (16383 / 360) * phase;
            comand[1] = value >> 8;
            comand[2] = value;


            spi_transmit(Signal, comand, 3);

        }
        else {
            Serial.println("invalid phase");
        }
    }
    else {
        Serial.println("invalid Signal set_phase");
    }
}


void DEP_control::confirm_change(bool set[12]) {
    for (int i = 0; i < 12; i++) {
       if (set[i]==1){
          digitalWrite(SPI_pin_list[i], LOW);
          }
       }
    digitalWrite(IO_update_pin, HIGH);
    delay(100);
    digitalWrite(IO_update_pin, LOW);
     for (int i = 0; i < 12; i++) {
     digitalWrite(SPI_pin_list[i], HIGH);
    }
} 

//A=1000/R
//R=1000/A=1000/255*Bit
void DEP_control::set_amplitude(int Signal, int amplitude){
    if ((0 <= Signal) && (Signal <= 11)) {
        
            byte comand[9];
            comand[0] = 0b11111100;
          //  comand[1] = (pre_amplitude / amplitude - 0.05) * 255;
          comand[1] = amplitude;
            spi_transmit(12 + Signal, comand, 2);
    }
    else {
        Serial.println("invalid Signal set_amplitude");
    }
}
void DEP_control::set_offset(int Signal, int offset){
    if ((0 <= Signal) && (Signal <= 5)) {
        if ((0 <= offset)&&(offset <= 5)) {
            byte comand[9];
            comand[0] = 0b11111100;
            comand[1] = offset / 5 * 255;
            spi_transmit(24 + Signal, comand, 2);
        }
        else {
            Serial.println("invalid offset set_offset");
        }
    }
    else {
        Serial.println("invalid Signal set_offset");
    }
}

void DEP_control::set_DC(int Signal, int DC) {
    if ((0 <= Signal) && (Signal <= 5)) {
      
          
            byte comand[9];
            comand[0] = 0b11111100;
            comand[1] = DC;
            spi_transmit(30 + Signal, comand, 2);
            
    
    }
    else {
        Serial.println("invalid Signal set_DC");
    }
}
void DEP_control::set_Multiplexer(int MUX, int Pin){
    if ((0 <= MUX) && (MUX <= 5)) {
        if ((0 <= Pin)&& (Pin <= 3)) {
            if ((Pin & 0b01) > 0) {
                digitalWrite(MUX_pin_list[MUX * 2], HIGH);
            }
            else {
                digitalWrite(MUX_pin_list[MUX * 2], LOW);
            }
            if ((Pin & 0b10) > 0) {
                digitalWrite(MUX_pin_list[MUX * 2 + 1], HIGH);
            }
            else {
                digitalWrite(MUX_pin_list[MUX * 2 + 1], LOW);
            }
        }
        else {
            Serial.println("invalid Pin set_Multiplexer");
        }
    }
    else {
        Serial.println("invalid MUX set_Multiplexer");
    }
}
void DEP_control::set_frequency_sweep(int Signal, unsigned long int frequency1,unsigned long int frequency2,unsigned long int time_ms){
   if ((0 <= Signal) && (Signal <= 11)) {
        if ((0<=frequency1)&&(frequency1 <= Sys_clk)&&(0<=frequency2)&&(frequency2 <= Sys_clk)&&(frequency2 > frequency1)) {
            
            byte comand[28];
             comand[0] = CFR1_register;
             comand[1] = 0b00000000; 
             comand[2] = 0b00111000;//Internal Profile Control + sync clock disable
             comand[3] = 0b00001000;//Auxiliary Accumulator Enable
             comand[4] = 0b00000100; //Autoclear Auxiliary Accum.
             
             comand[5]= 0x08;  //delta time register
             comand[6]= 0x00;  //set to 1us
             comand[7]= 0xFA;
             comand[8]= 0x00;
             comand[9]= 0xFA;       
             unsigned long int value1 = (4294967295 / Sys_clk) * frequency1;
            unsigned long int value2 = (4294967295 / Sys_clk) * frequency2;
            comand[10]= 0x06;
            comand[11] = value2 >> 24;
            comand[12] = value2 >> 16;
            comand[13] = value2 >> 8;
            comand[14] = value2;
            comand[15] = value1 >> 24;
            comand[16] = value1 >> 16;
            comand[17] = value1 >> 8;
            comand[18] = value1;

             unsigned long int delta_f=(value2-value1)/(time_ms*1000);
             comand[19]=0x07;
             comand[20] = delta_f >> 24;
            comand[21] = delta_f >> 16;
            comand[22] = delta_f >> 8;
            comand[23] = delta_f;
            comand[24] = delta_f >> 24;
            comand[25] = delta_f >> 16;
            comand[26] = delta_f >> 8;
            comand[27] = delta_f;
            
            spi_transmit(Signal, comand, 28);

        }
        else {
            Serial.println("invalid frequency");

        }
    }
    else {
        Serial.println("invalid Signal set_frequency");
    }

  
  
  }
