#! /usr/bin/python

import SendCommand
from time import sleep

print "Check humidity"
SendCommand.write('r')
sleep(2)
response = SendCommand.read()
val = int(response)
print response
if val > 350:
	SendCommand.write('h')
else:
	SendCommand.write('l')
