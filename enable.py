#! /usr/bin/python
import serial
ser = serial.Serial('/dev/ttyACM0', 9600)

ser.write("e")

