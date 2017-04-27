#! /usr/bin/python
import serial

s=serial.Serial('/dev/ttyACM0',9600)

def write(data):
	print "sending " + data	
	s.write(data)  
