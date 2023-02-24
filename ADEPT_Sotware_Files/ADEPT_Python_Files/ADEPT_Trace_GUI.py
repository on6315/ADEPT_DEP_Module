# -*- coding: utf-8 -*-
"""
Created on Thu Jun  9 11:03:54 2022

@author: Albina Julius, Gowri Krishnan
"""

import tkinter as tk
from tkinter import *
import serial
import time
import pickle
from PIL import ImageTk,Image 
from functools import partial
import random
from tkinter.filedialog import askopenfilename
from scipy.spatial.distance import cdist
import numpy as np
import math

window = tk.Tk()
# ser = serial.Serial(port='/dev/cu.usbmodem141101', baudrate=9600, timeout=(1))
ser = serial.Serial(port='com4', baudrate=9600, timeout=(1))
pickle_in = open("ADEPT_LUT.pickle","rb") 

LUT = pickle.load(pickle_in)
global XY 
XY=([*LUT])
canvas = Canvas(window, width = 900, height = 900)  
canvas.pack()  
window.title("ADEPT Trace GUI")

global tracepoints
tracepoints =[]
global tracepoints_original
global guicenter_x, new_radius #radius for the circle representing the circle area wrt video frame in experiments
global guicenter_y
global pix_factor, pix_factor_GUI
global sampling_factor
global sampled_tracepoints
# sampling_factor=2
guicenter_x=278
guicenter_y=275
pix_factor=0.3
pix_factor_GUI=0.2
new_radius=250

class MyWindow:
    def __init__(self, win):
        
        # all the parameters
        self.xlabel=Label(win, text='X coordinate', width=10)
        self.ylabel=Label(win, text='Y coordinate', width=10)
        self.xkeylabel=Label(win, text='X micro-meter', width=10)
        self.ykeylabel=Label(win, text='Y micro-meter', width=10)
        self.amprange=Label(win, text='(0-Max,255-Min)')
        
        self.sampling_factor_label=Label(win, text='sampling factor', width=20)
        self.phase_send_delay_label=Label(win,text='delay time (sec)',width=15)
        self.xclicked=Entry(width=5)
        self.yclicked=Entry(width=5)
        self.xkeyvalue=Entry(width=5)
        self.ykeyvalue=Entry(width=5)
        self.LUTphase=Entry(width=20)
        self.inputamp=Entry(width=10)
        self.inputfreq=Entry(width=10)
        
        self.sampling_factor_entered=Entry(width=5)
        self.phase_send_delay=Entry(width=5)
        
        canvas.bind('<Button-1>', self.traploc)
        
        # enable parameters for the send command
        self.var1 = tk.IntVar()
        self.enable_ckeckbox = tk.Checkbutton(win, text='Enable Send',variable=self.var1, onvalue=1, offvalue=0, command=self.print_selection)
        # enable parameters for the trace command
        self.var2 = tk.IntVar()
        self.enable_trace = tk.Checkbutton(win, text='Enable Trace',variable=self.var2, onvalue=1, offvalue=0, command=self.enabletrace)
        # all the buttons
        self.sendbutton=Button(win, text='SEND', command=self.send, width=9)
        
        self.sendbutton['state'] = tk.DISABLED
        self.pushpull=Button(win, text='Push Pull', width=10)
        self.centraltrap=Button(win, text='Central Trap', width=10, command=self.centraltrapphase)
        self.rotation=Button(win, text='Rotation', width=10)
        self.linear=Button(win, text='Linear', width=10)
        self.ampbutton=Button(win, text='Amplitude', command=self.sendamp, width=10)
        self.freqbutton=Button(win, text='Frequency', command=self.sendfreq, width=10)
        self.phasebutton=Button(win, text='Phase', command=self.send, width=10)
        self.cleartracebutton=Button(win, text='Clear', command=self.cleartrace, width=10)
        self.trace_pattern_button=Button(win, text='Trace', command=lambda: self.trace_pattern(), width=10)
        self.plot_LUT_pots_button=Button(win, text='Plot LUT', command=self.plot_lut, width=10)

        # x 
        self.xlabel.place(x=600, y=150)
        self.xclicked.place(x=600, y=200)
        # y
        self.ylabel.place(x=700, y=150)
        self.yclicked.place(x=700, y=200)
        # x approximated
        self.xkeylabel.place(x=600, y=250)
        self.xkeyvalue.place(x=600, y=300)
        # y approzimated
        self.ykeylabel.place(x=700, y=250)
        self.ykeyvalue.place(x=700, y=300)
        # phase
        self.LUTphase.place(x=600, y=400)
        # amplitude
        self.inputamp.place(x=600, y=500)
        # frequency
        self.inputfreq.place(x=700, y=500)
        # range of amplitude
        self.amprange.place(x=600, y=475)
        
        self.phase_send_delay_label.place(x=250,y=550)
        self.phase_send_delay.place(x=300,y=570)
               
        self.sampling_factor_label.place(x=350,y=550)
        self.sampling_factor_entered.place(x= 400, y= 570)
               
    # buttons used
        # send
        self.sendbutton.place(x=600, y=550) 
        # push pull
        self.pushpull.place(x=600, y=600)
        # central trap
        self.centraltrap.place(x=600, y=650)
        # rotation
        self.rotation.place(x=700, y=600)
        # linear
        self.linear.place(x=700, y=650)
        # enable and disable 
        self.enable_ckeckbox.place(x=700, y=550)
        # enable ckeckbox for trace path
        self.enable_trace.place(x=50,y=550)
        # amplitude button
        self.ampbutton.place(x=600, y=450)
        
        # frequency button
        self.freqbutton.place(x=700, y=450)
        # phase button
        self.phasebutton.place(x=600, y=350)
        # clear trace button
        self.cleartracebutton.place(x=700, y= 700)
        # trace button
        self.trace_pattern_button.place(x=100,y=800)
        # plot the LUT points
        self.plot_LUT_pots_button.place(x=600,y=700)
        
    def rotate(origin, point, angle):
        """
        Rotate a point counterclockwise by a given angle around a given origin.
    
        The angle should be given in radians.
        """
        ox, oy = origin
        px, py = point
    
        qx = ox + math.cos(angle) * (px - ox) - math.sin(angle) * (py - oy)
        qy = oy + math.sin(angle) * (px - ox) + math.cos(angle) * (py - oy)
        return qx, qy
    
    # obtaining the clicked position
    def callback(self,event):

       print("clicked at", self.x, self.y)
       return self.x, self.y
     
    canvas.bind("<Button-1>", callback) 
    
    # create a circle representing  the area wrt the video frame area from the experiments
    x1=guicenter_x-new_radius
    y1=guicenter_y-new_radius
    x2=guicenter_x+new_radius
    y2=guicenter_y+new_radius
    
    canvas.create_oval(x1, y1,x2,y2,outline="#008800",fill='white', width=4)
    
    #creating electrodes
    # canvas.create_line(guicenter_x,guicenter_y-new_radius,guicenter_x,guicenter_y-new_radius+20,width=4)
    for theta in range(0, 360, 60):  #60 degree ritation from the origin ; matching the Exp frames.
        print(theta)
        point_1 = (guicenter_x, guicenter_y-new_radius)
        point_2 = (guicenter_x, guicenter_y-new_radius+20)
        origin = (guicenter_x, guicenter_y)
        E2_pt1=rotate(origin, point_1, math.radians(theta)) #the angle must be in radians
        E2_pt2=rotate(origin, point_2, math.radians(theta))

        canvas.create_line(E2_pt1[0],E2_pt1[1]*1,E2_pt2[0],E2_pt2[1]*1, width=4)
        
    canvas.create_line(guicenter_x,guicenter_y-10,guicenter_x,guicenter_y+10,width=1)
    canvas.create_line(guicenter_x-10,guicenter_y,guicenter_x+10,guicenter_y,width=1)
    
    # print("The rotated points",E2_pt1[0],E2_pt1[1]*1,E2_pt2[0],E2_pt2[1]*1)
    def traploc(self, event):
        if (self.var2.get() == 0) and (self.var2.get() != 1):
       
           global guicenter_x
           global guicenter_y
           global pix_factor, pix_factor_GUI
           # display the clicked coordinate
           self.xclicked.delete(0, 'end')
           self.yclicked.delete(0, 'end')
           num1=int(event.x)
           num2=int(event.y)
           
           self.xclicked.insert(END, str(num1))
           self.yclicked.insert(END, str(num2))

           # converting the pixcel values to micrometer after centering
           self.X_micro=(guicenter_x-num1)*pix_factor_GUI
           self.Y_micro=(guicenter_x-num2)*pix_factor_GUI*-1
           
           # display the aprozimated value of clicked positions
           self.xkeyvalue.delete(0, 'end')
           self.ykeyvalue.delete(0, 'end')
           self.xkeyvalue.insert(END, str(self.X_micro))
           self.ykeyvalue.insert(END, str(self.Y_micro))
           self.num = (self.X_micro,self.Y_micro)
           
           # getting the value from dict
           self.phase=LUT.get(self.num)
           # display the phase in gui
           self.LUTphase.delete(0, 'end')
           self.LUTphase.insert(END, str(self.phase))
           # getting user input values for the amplitude and frequency
           self.amp=self.inputamp.get()
           self.freq=self.inputfreq.get()
           
    # enable trace path on GUI
    def enabletrace(self):
      
        if (self.var2.get() == 1) and (self.var2.get() != 0):
            
            self.dots=[]
            global tracepoints_original,tracepoints
            tracepoints_original=[]
            tracepoints =[]
            def paint( event ):
               python_green = "#FF0000"
               x1, y1 = ( event.x - 2 ), ( event.y - 2 )
               x2, y2 = ( event.x + 2 ), ( event.y + 2 )
               self.dot= canvas.create_oval( x1, y1, x2, y2, fill = python_green )
               self.xclicked.delete(0, 'end')
               self.yclicked.delete(0, 'end')
               num1=int(event.x)
               num2=int(event.y)
               
               self.xclicked.insert(END, str(num1))
               self.yclicked.insert(END, str(num2))
               
               # converting the pixcel values to micrometer after centering
               guicenter_x=278
               guicenter_y=275
               pix_factor=0.3
               pix_factor_GUI=0.2
               self.X_micro=(guicenter_x-num1)*pix_factor_GUI
               self.Y_micro=(guicenter_x-num2)*pix_factor_GUI*-1
               
               # display the micro meter value of clicked positions
               self.xkeyvalue.delete(0, 'end')
               self.ykeyvalue.delete(0, 'end')
               
               self.xkeyvalue.insert(END, str(self.X_micro))
               self.ykeyvalue.insert(END, str(self.Y_micro))
               self.num = (self.X_micro,self.Y_micro)
               self.phase=LUT.get(self.num)
               
               # display the phase in gui
               self.LUTphase.delete(0, 'end')
               self.LUTphase.insert(END, str(self.phase))
               tracepoints.append(self.num)
               #append all the dots drawn for clearing from the GUI later.
               self.dots.append(self.dot)
               # print(self.dots)
            canvas.bind("<B1-Motion>", paint)
        # print("traced points after",tracepoints) 
        if (self.var2.get() == 0): 
            self.keys=[]
            self.sampling_factor=int(self.sampling_factor_entered.get())
            print(self.sampling_factor)
            sampled_tracepoints=tracepoints[::self.sampling_factor]
            # finding the min distance between the sampled points and the points in LUT
            min_distance = (cdist(sampled_tracepoints,XY))
            
            self.LUT_points=[] #for clearing the retraced points
            for i in range(len(sampled_tracepoints)):
                
                # Get all the min distance and get the index of the LUT that has the
                # minimum distance from sampled point.
                min_distlist = list(min_distance[i])
                
                min_value= min(min_distlist)
                min_index= min_distlist.index(min_value)
                #Getting the Key value i.e the Phase combination
                # corresponding to the closest point
                key = XY[min_index]
                
                self.tracing_phase=str(list(LUT[key]))
                self.tracing_phase_str=(self.tracing_phase.replace("'", ""))
                print("keys",key,  key[0],key[1])
                print("phase and i",(self.tracing_phase_str),i)
                self.tracing_phase_str_cut=self.tracing_phase_str[1:len(self.tracing_phase_str)-1]
                self.tracing_phase_str_split=self.tracing_phase_str_cut.split(',')
                print(self.tracing_phase_str_cut)
                print(self.tracing_phase_str_split[0],(self.tracing_phase_str_split[5]))
                
                self.text_E1=canvas.create_text(270, 74, text= self.tracing_phase_str_split[0], fill="blue",font=('Helvetica 15 bold'),anchor=tk.SW)
                self.text_E2=canvas.create_text(432, 169, text= self.tracing_phase_str_split[1], fill="blue",font=('Helvetica 15 bold'),anchor=tk.SW)
                self.text_E3=canvas.create_text(432, 382, text= self.tracing_phase_str_split[2], fill="blue",font=('Helvetica 15 bold'),anchor=tk.SW)
                self.text_E4=canvas.create_text(270, 489, text= self.tracing_phase_str_split[3], fill="blue",font=('Helvetica 15 bold'),anchor=tk.SW)
                self.text_E5=canvas.create_text(89, 382, text= self.tracing_phase_str_split[4], fill="blue",font=('Helvetica 15 bold'),anchor=tk.SW)
                self.text_E6=canvas.create_text(89, 169, text= self.tracing_phase_str_split[5], fill="blue",font=('Helvetica 15 bold'),anchor=tk.SW)
                
                
                #retracing the path drawn 
                python_blue = "#0000FF"
                xa, ya = ( (guicenter_x-(key[0]/pix_factor_GUI)) -5 ), ( (guicenter_y-((key[1]*-1)/pix_factor_GUI)) - 5 )
                xb, yb = ( (guicenter_x-(key[0]/pix_factor_GUI)) + 5 ), ((guicenter_y-((key[1]*-1)/pix_factor_GUI)) + 5 )
                self.LUT_point=canvas.create_oval( xa, ya, xb, yb, fill = python_blue )
                canvas.pack(fill=BOTH, expand=1)
                window.update()
                # time. sleep(2)
                #sending the phase values
                ser.write(bytes(str(self.tracing_phase_str), 'UTF-8'))
                time.sleep(int(self.phase_send_delay.get()))
                data = ser.readline()
                print(data)
                self.LUT_points.append(self.LUT_point)

                canvas.delete(self.text_E1)
                canvas.delete(self.text_E2)
                canvas.delete(self.text_E3)
                canvas.delete(self.text_E4)
                canvas.delete(self.text_E5)
                canvas.delete(self.text_E6)
     
    # enable and disable checkbox for Send button
    def print_selection(self):
        if (self.var1.get() == 1):
            self.sendbutton['state'] = tk.NORMAL
        elif (self.var1.get() == 0):
            self.sendbutton['state'] = tk.DISABLED 
    #Send button to send the phase when button is pressed.    
    def send(self):
        ser.write(bytes(str(self.phase), 'UTF-8'))
        time.sleep(0.05)
        
    def sendamp(self):
        # amp = "A" + str(self.inputamp.get())
        ser.write(bytes(str( "A" + "[0, 0, 0, 0, 0, 0]"), 'UTF-8'))
        time.sleep(0.05)
        data3 = ser.readline()
        print(data3)
        
    def sendfreq(self):
        # freq = "F" + str(self.inputfreq.get())
        ser.write(bytes(str( "F" + "[200, 200, 200, 200, 200, 200]"), 'UTF-8'))
        time.sleep(0.05)
        data2 = ser.readline()
        
        print("sent freq",data2)
    def centraltrapphase(self):
        
        ser.write(bytes(str('[0, 90, 180, 0, 90, 180]'), 'UTF-8'))
        time.sleep(0.05)
        data = ser.readline()
        print(data)             

    def cleartrace(self):
        def rotate(origin, point, angle):
            """
            Rotate a point counterclockwise by a given angle around a given origin.
        
            The angle should be given in radians.
            """
            ox, oy = origin
            px, py = point
        
            qx = ox + math.cos(angle) * (px - ox) - math.sin(angle) * (py - oy)
            qy = oy + math.sin(angle) * (px - ox) + math.cos(angle) * (py - oy)
            return qx, qy
        
        # create a circle representing  the area wrt the video frame area from the experiments
        x1=guicenter_x-new_radius
        y1=guicenter_y-new_radius
        x2=guicenter_x+new_radius
        y2=guicenter_y+new_radius
        
        canvas.create_oval(x1, y1,x2,y2,outline="#008800",fill='white', width=4)
        
        #creating electrodes
        # canvas.create_line(guicenter_x,guicenter_y-new_radius,guicenter_x,guicenter_y-new_radius+20,width=4)
        for theta in range(0, 360, 60):  #60 degree ritation from the origin 
            print(theta)
            point_1 = (guicenter_x, guicenter_y-new_radius)
            point_2 = (guicenter_x, guicenter_y-new_radius+20)
            origin = (guicenter_x, guicenter_y)
            E2_pt1=rotate(origin, point_1, math.radians(theta)) #the angle must be in radians
            E2_pt2=rotate(origin, point_2, math.radians(theta))

            canvas.create_line(E2_pt1[0],E2_pt1[1]*1,E2_pt2[0],E2_pt2[1]*1, width=4)
            
        canvas.create_line(guicenter_x,guicenter_y-10,guicenter_x,guicenter_y+10,width=1)
        canvas.create_line(guicenter_x-10,guicenter_y,guicenter_x+10,guicenter_y,width=1)
            
    def plot_lut(self):
        self.XY= ([*LUT])
        for j in range (len(self.XY)):
            xa, ya = ( (guicenter_x-(self.XY[j][0]/pix_factor_GUI)) -2 ), ( (guicenter_y-(self.XY[j][1]*-1)/pix_factor_GUI) - 2 )
            xb, yb = ( (guicenter_x-(self.XY[j][0]/pix_factor_GUI)) + 2 ), ((guicenter_y-(self.XY[j][1]*-1)/pix_factor_GUI) + 2 )
            canvas.create_oval( xa, ya, xb, yb, fill = "#00FF00")
            canvas.pack(fill=BOTH, expand=1)
            
    
    def trace_pattern(self):
        print("trace pattern fn",self.trace_variable.get())
        if self.trace_variable.get() == "square":
            self.square()
        elif self.trace_variable.get() == "triangle":
            self.triangle()
        elif self.trace_variable.get() == "oval":
            self.oval()
            
    canvas.bind('<Button-1>', send)     
    canvas.bind('<Button-1>', print_selection)

    canvas.bind('<Button-1>', traploc) 
    
mywin=MyWindow(window)
window.mainloop()