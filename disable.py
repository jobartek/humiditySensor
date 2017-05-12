#! /usr/bin/python
import serial
ser = serial.Serial('/dev/ttyACM0', 9600)


def disableSensor():
	ser.write("d")
	print("Disabling sensor")

disableSensor()
