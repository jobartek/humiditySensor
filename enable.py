#! /usr/bin/python
import serial
ser = serial.Serial('/dev/ttyACM0', 9600)


def enableSensor():
	ser.write("e")
	print("Enabling sensor")

enableSensor()
