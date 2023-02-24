#include <SPI.h>
#include "DEP_control.h"

String x;
DEP_control Instance1;
  
void setup() {

  Serial.begin(9600);
  Serial.setTimeout(3);
  //Serial.println("Arduino");
  
  Instance1.start();
 for(int i=0;i<12;i=i+2){
  Instance1.init(i);
  Instance1.set_frequency(i,200000);
  //Instance1.set_frequency(i,10000);
  }

  Instance1.set_phase(0,0);
  Instance1.set_phase(2,180);
  Instance1.set_phase(4,180);
  Instance1.set_phase(6,0);
  Instance1.set_phase(8,180);
  Instance1.set_phase(10,180);
Instance1.confirm_change((1,0,1,0,1,0,1,0,1,0,1,0));
  Instance1.set_Multiplexer(0,1);
  Instance1.set_Multiplexer(1,1);
  Instance1.set_Multiplexer(2,1);
  Instance1.set_Multiplexer(3,1);
  Instance1.set_Multiplexer(4,1);
  Instance1.set_Multiplexer(5,1);

  Instance1.set_offset(0,0);
 Instance1.set_offset(1,0);
 Instance1.set_offset(2,0);
 Instance1.set_offset(3,0);
 Instance1.set_offset(4,0);
 Instance1.set_offset(5,0);
   Instance1.set_amplitude(1,255);
 Instance1.set_amplitude(3,255);
 Instance1.set_amplitude(5,255);
 Instance1.set_amplitude(7,255);
 Instance1.set_amplitude(9,255);
 Instance1.set_amplitude(11,255);




 pinMode(23, OUTPUT);      
 digitalWrite(23, HIGH);

}

void loop() {
 
while (!Serial.available());
  x = Serial.readString();//"[90,180,30,40,60,120]";//


  Serial.println("Test");
   Instance1.set_Multiplexer(0,1);
  Instance1.set_Multiplexer(1,1);
  Instance1.set_Multiplexer(2,1);
  Instance1.set_Multiplexer(3,1);
  Instance1.set_Multiplexer(4,1);
  Instance1.set_Multiplexer(5,1);

  Instance1.set_offset(0,0);
 Instance1.set_offset(1,0);
 Instance1.set_offset(2,0);
 Instance1.set_offset(3,0);
 Instance1.set_offset(4,0);
 Instance1.set_offset(5,0);
   Instance1.set_amplitude(1,255);
 Instance1.set_amplitude(3,255);
 Instance1.set_amplitude(5,255);
 Instance1.set_amplitude(7,255);
 Instance1.set_amplitude(9,255);
 Instance1.set_amplitude(11,255);
  //x = x.replace("[","0");

String phase = x,phase1,phase2,ip_freq,ip_amp,freq1,freq2,amp1,amp2;
int commaPosition, commaPosition1, commaPosition2;
int i =0,factor=1000;
String freq=x;
String amp = x;
commaPosition = phase.indexOf('[');
phase = phase.substring(commaPosition+1, phase.length());




commaPosition2 = amp.indexOf('[');
amp = amp.substring(commaPosition2+1, amp.length());

if (x.charAt(0)=='F')
{
  commaPosition1 = x.indexOf('[');
  freq = x.substring(commaPosition1+1, x.length());
  //Serial.println(ip_freq);
  //ip_freq = x.substring(2, x.length());
 //freq = ip_freq.toInt();
  do
  {
    
    i=i+1;
    commaPosition1 = freq.indexOf(',');
    
    if(commaPosition1 != -1)
    {
      freq1 = (freq.substring(0,commaPosition1));
      freq = freq.substring(commaPosition1+1, freq.length()); 
      freq2=factor*freq1.toInt();
      Instance1.set_frequency((10-((i-1)*2)),freq2.toInt());
      //Serial.println("L1");
   // Serial.println(freq2.toInt());
   
      }
      else
     {
      // here after the last comma is found
      if(freq.length()>0)
       freq1=freq.substring(0, freq.length());;
       freq2=factor*freq1.toInt();
       Serial.println("L2=");
      Serial.println(freq2.toInt());
      Instance1.set_frequency((10-((i-1)*2)),freq2.toInt());
        // if there is text after the last comma print it
      }
      
    }
   while(i <= 6);  
    
 Instance1.confirm_change((1,0,1,0,1,0,1,0,1,0,1,0));
     // for(int i=0; i<12; i=i+2)
      //{
      ////Instance1.init(i);
      //Instance1.set_frequency(i,freq.toInt()); 
     // }
      ////Serial.println("freq");
      //Instance1.confirm_change((1,0,1,0,1,0,1,0,1,0,1,0));
}
else if (x.charAt(0)=='A')
{

  commaPosition2 = x.indexOf('[');
  freq = x.substring(commaPosition2+1, x.length());
  do
  {
    
    i=i+1;
    commaPosition2 = amp.indexOf(',');
    //Serial.println("in");
    if(commaPosition2 != -1)
    {
      amp1 = (amp.substring(0,commaPosition2));
      amp = amp.substring(commaPosition2+1, amp.length()); 
      amp2=amp1.toInt();
      Instance1.set_amplitude((10-((i-1)*2)),amp2.toInt());
    // Serial.println(phase2);
     
      }
      else
     {
      // here after the last comma is found
      if(amp.length()>0)
       amp1=amp.substring(0, amp.length());;
       amp2=amp1.toInt();
       Instance1.set_amplitude((10-((i-1)*2)),amp2.toInt());
       // Serial.println(phase2); // if there is text after the last comma print it
      }
     // Serial.println(i);
    }
   while(i <= 6); 
  //for(int i=0; i<12; i=i+2)
  //{
  ////Instance1.init(i);
  //Instance1.set_amplitude(i,amp.toInt()); 
  //}
  ////Serial.println(amp);
  Instance1.confirm_change((1,0,1,0,1,0,1,0,1,0,1,0));
}
else
{  
  do
  {
    
    i=i+1;
    commaPosition = phase.indexOf(',');
    //Serial.println("in");
    if(commaPosition != -1)
    {
      phase1 = (phase.substring(0,commaPosition));
      phase = phase.substring(commaPosition+1, phase.length()); 
      phase2=phase1.toInt();
      Instance1.set_phase((i-1)*2,phase2.toInt());
    // Serial.println(phase2);
     
      }
      else
     {
      // here after the last comma is found
      if(phase.length()>0)
       phase1=phase.substring(0, phase.length());;
       phase2=phase1.toInt();
       Instance1.set_phase((i-1)*2,phase2.toInt());
       // Serial.println(phase2); // if there is text after the last comma print it
      }
      
    }
   while(i <= 6);  

Instance1.confirm_change((1,0,1,0,1,0,1,0,1,0,1,0));
}

Instance1.confirm_change((1,0,1,0,1,0,1,0,1,0,1,0));
}
