

# -*- coding: utf-8 -*-
"""
Created on Tue Mar 22 11:19:59 2022

@authors: Albina Julius, Gowri Krishnan
"""

import tkinter
import time
import random
import serial
ser = serial.Serial(port='com7', baudrate=9600, timeout=(1))


class App:

    def __init__(self, window, window_title):
        self.window = window
        self.window.title(window_title)
        
        
        # setting a frame for buttons used to interact with the GUI, 2 frames are set
        # one bellow the video and the other below the image
        self.vdbtnframe= tkinter.Frame(self.window, width=400,height=400)
        self.vdbtnframe.grid(row=1,column=0,padx=10,pady=2)
    # BUTTONS
        # button to send the central trap phases.
        self.btn_centraltrap=tkinter.Button(self.vdbtnframe, text="Central Trap", width=20, command=self.centraltrapphase)
        self.btn_centraltrap.grid(row=3,column=2,padx=10,pady=2)
        # button to generate the randon sequence of phases that need to be send to Arduino
        self.btn_genphase=tkinter.Button(self.vdbtnframe, text="Generate Phase", width=20, command=self.generaterandph)
        self.btn_genphase.grid(row=1,column=1,padx=10,pady=2)
        self.btn_sendphase=tkinter.Button(self.vdbtnframe, text="Send Phase", width=20, command=self.sendphasevalue)
        self.btn_sendphase.grid(row=2,column=2,padx=10,pady=2)
        # button to send the entered frequency to the Arduino
        self.btn_sendfreq=tkinter.Button(self.vdbtnframe, text="Send Freq (KHz)", width=20, command=self.sendfreqvalue)
        self.btn_sendfreq.grid(row=3,column=1,padx=10,pady=2)
        # button to send the entered amplitude to the Arduino
        self.btn_sendamp=tkinter.Button(self.vdbtnframe, text="Send Amp", width=20, command=self.sendampvalue)
        self.btn_sendamp.grid(row=3,column=0,padx=10,pady=2)
        # button for phase rotation by 60 degrees
        self.btn_electrorotate=tkinter.Button(self.vdbtnframe, text="electrode rotate", width=20, command=self.electrorot)
        self.btn_electrorotate.grid(row=4,column=2,padx=10,pady=2)
        
    # LABELS
        # labelling the text boxes used
        self.inputphaselb=tkinter.Label(self.vdbtnframe, text='Input Phase Values', width=25)
        self.inputphaselb.grid(row=1,column=0,padx=10,pady=2)
        
    # TEXTBOXS
        # input phase text box to display the cental trap phases
        self.inputphase=tkinter.Entry(self.vdbtnframe, width=25)
        self.inputphase.delete(0, 'end')
        # self.inputphase.insert(tkinter.END,'[0, 90, 180, 0, 90, 180]')
        self.inputphase.insert(tkinter.END,'[0, 180, 180, 0, 180, 180]')
        self.inputphase.grid(row=2,column=0,padx=10,pady=2)
        # phase text box to display the random generated phase sequence.
        self.phasedisplay=tkinter.Entry(self.vdbtnframe, width=25)
        self.phasedisplay.grid(row=2,column=1,padx=10,pady=2)
        # input frequency text box for user entry
        self.freqdisplay=tkinter.Entry(self.vdbtnframe, width=35)
        self.freqdisplay.delete(0, 'end')
        self.freqdisplay.insert(tkinter.END,'[200, 200, 200, 200, 200, 200]')
        self.freqdisplay.grid(row=4,column=1,padx=10,pady=2)
        # input amplitude text box for user entry
        self.ampdisplay=tkinter.Entry(self.vdbtnframe, width=35)
        self.ampdisplay.delete(0, 'end')
        self.ampdisplay.insert(tkinter.END,'[0, 0, 0, 0, 0, 0]')
        self.ampdisplay.grid(row=4,column=0,padx=10,pady=2)
        
    # CHECKBOX
        self.var1=tkinter.IntVar()
        # checkbox for enable send button
        self.c1 = tkinter.Checkbutton(self.vdbtnframe, text='Enable Send', variable=self.var1, onvalue=1, offvalue=0)
        self.c1.grid(row=1,column=2,padx=10,pady=2)
        # After it is called once, the update method will be automatically called every delay milliseconds
        
        self.window.mainloop()
      
    # this generates a random sequence of 6 phases out of which the first phase is always 0.
    def generaterandph(self):
     
        self.randomlist=random.sample(range(0,360),5)
        # comment out the next line if a non zero phase value is needed for the first phase.
        self.randomlist.insert(0,0)
        # randomlist=[random.randint(0,360) for i in range(6)]
        self.phasedisplay.delete(0, 'end')
        self.phasedisplay.insert(tkinter.END, str(self.randomlist))
        
    #  sends the central trap phases to the arduino
    def centraltrapphase(self):
        
        ser.write(bytes(str('[0, 90, 180, 0, 90, 180]'), 'UTF-8'))
        time.sleep(0.5)
        ser.write(bytes(str( "F" + "[200, 200, 200, 200, 200, 200]"), 'UTF-8'))
        time.sleep(0.5)
        ser.write(bytes(str( "A" + "[0, 0, 0, 0, 0, 0]"), 'UTF-8'))
        time.sleep(0.5)
        # data = ser.readline()
        # print(data)
        
    # sends the 60 degree rotated phase values to arduino
    def electrorot(self):
        ser.write(bytes(str( "F" + "[200, 200, 200, 200, 200, 200]"), 'UTF-8'))
        time.sleep(0.5)
        ser.write(bytes(str( "A" + "[0, 0, 0, 0, 0, 0]"), 'UTF-8'))
        time.sleep(0.5)
        ser.write(bytes(str('[0, 60, 120, 180, 240, 300]'), 'UTF-8'))
        
        time.sleep(0.5)
        data = ser.readline()
        print(data)
     
    # the generated phase is send only when the enable checkbox is unchecked, else the trap phase is semd
    def sendphasevalue(self):
        
        if (self.var1.get() == 1):
            ser.write(bytes(str(self.inputphase.get()), 'UTF-8'))
        else:
            ser.write(bytes(str(self.randomlist), 'UTF-8'))
        time.sleep(0.5)
        data1 = ser.readline()
        print(data1)
        
    # sending the entered frequency value to the arduino when the send freq button is pressed 
    def sendfreqvalue(self):
        
        freq = "F" + str(self.freqdisplay.get())
        ser.write(bytes(str(freq), 'UTF-8'))
        time.sleep(0.5)
        data2 = ser.readline()
        
        print("sent freq",data2,freq)
        
        # sending the entered amplitude value to the arduino when the send amplitude button is presses.
    def sendampvalue(self):
        
        amp = "A" + str(self.ampdisplay.get())
        ser.write(bytes(str(amp), 'UTF-8'))
        time.sleep(0.5)
        data3 = ser.readline()
        print(data3)


     # Create a window and pass it to the Application object
App(tkinter.Tk(), "ADEPT Characterisation Toolbox")