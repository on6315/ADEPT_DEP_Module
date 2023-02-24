#pragma once
#include <SPI.h>
class DEP_control
{
private:
	void spi_transmit(int pin, byte comand[9], int length);
	
public:
void confirm_change(bool set[12]);

	void start();
	// Signal 0 ->12
	void init(int Signal);
	//frequency 0-> 250000000
	void set_frequency(int Signal, unsigned long int frequency);
  void set_frequency_sweep(int Signal, unsigned long int frequency1,unsigned long int frequency2,unsigned long int time_ms);
	//phase 0-> 360
	void set_phase(int Signal, int phase);
	//amplitude 0-> 5
	void set_amplitude(int Signal, int amplitude);
	//offset 0-> 5
	void set_offset(int Signal, int offset);
	//DC 0-> 10
	void set_DC(int Signal, int DC);
	//MUX 0->6, Pin 0->3
	void set_Multiplexer(int MUX, int Pin);
};
