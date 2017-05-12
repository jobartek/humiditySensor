[33mcommit 497256c80f5c4c87f9b41c96a40f3dd88672c09a[m
Author: jobartek <szczawb@gmail.com>
Date:   Fri Apr 28 09:21:53 2017 +0000

    adding working example

[1mdiff --git a/CheckHumidity.py b/CheckHumidity.py[m
[1mnew file mode 100755[m
[1mindex 0000000..487a2cc[m
[1m--- /dev/null[m
[1m+++ b/CheckHumidity.py[m
[36m@@ -0,0 +1,15 @@[m
[32m+[m[32m#! /usr/bin/python[m
[32m+[m
[32m+[m[32mimport SendCommand[m
[32m+[m[32mfrom time import sleep[m
[32m+[m
[32m+[m[32mprint "Check humidity"[m
[32m+[m[32mSendCommand.write('r')[m
[32m+[m[32msleep(2)[m
[32m+[m[32mresponse = SendCommand.read()[m
[32m+[m[32mval = int(response)[m
[32m+[m[32mprint response[m
[32m+[m[32mif val > 350:[m
[32m+[m	[32mSendCommand.write('h')[m
[32m+[m[32melse:[m
[32m+[m	[32mSendCommand.write('l')[m
[1mdiff --git a/SendCommand.py b/SendCommand.py[m
[1mindex 4e7d344..ef22bfd 100644[m
[1m--- a/SendCommand.py[m
[1m+++ b/SendCommand.py[m
[36m@@ -1,8 +1,14 @@[m
 #! /usr/bin/python[m
 import serial[m
[32m+[m[32mfrom time import sleep[m
 [m
 s=serial.Serial('/dev/ttyACM0',9600)[m
 [m
 def write(data):[m
 	print "sending " + data	[m
 	s.write(data)  [m
[32m+[m
[32m+[m[32mdef read():[m
[32m+[m	[32mprint "reading data"[m
[32m+[m	[32mreturn s.readline()[m
[41m+[m
[1mdiff --git a/SendCommand.pyc b/SendCommand.pyc[m
[1mnew file mode 100644[m
[1mindex 0000000..b8fca82[m
Binary files /dev/null and b/SendCommand.pyc differ
[1mdiff --git a/disable.py b/disable.py[m
[1mnew file mode 100755[m
[1mindex 0000000..9a54dd2[m
[1m--- /dev/null[m
[1m+++ b/disable.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m#! /usr/bin/python[m
[32m+[m[32mimport serial[m
[32m+[m[32mser = serial.Serial('/dev/ttyACM0', 9600)[m
[32m+[m
[32m+[m[32mser.write("d")[m
[32m+[m
[1mdiff --git a/enable.py b/enable.py[m
[1mnew file mode 100755[m
[1mindex 0000000..d3b8e6f[m
[1m--- /dev/null[m
[1m+++ b/enable.py[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m#! /usr/bin/python[m
[32m+[m[32mimport serial[m
[32m+[m[32mser = serial.Serial('/dev/ttyACM0', 9600)[m
[32m+[m
[32m+[m[32mser.write("e")[m
[32m+[m
[1mdiff --git a/test b/test[m
[1mnew file mode 100755[m
[1mindex 0000000..4b45c1a[m
[1m--- /dev/null[m
[1m+++ b/test[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32m#! /usr/bin/python[m
[32m+[m
[32m+[m[32mimport SendCommand[m
[32m+[m[32mSendCommand.write("101")[m
