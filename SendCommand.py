#! /usr/bin/python
import serial
from time import sleep

s=serial.Serial('/dev/ttyACM0',9600)

def write(data):
	print "sending " + data	
	s.write(data)  

def read():
	print "reading data"
	return s.readline()

