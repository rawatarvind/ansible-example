#!/bin/bash

import os 

# out= os.system('mkdir dir2')
# out= os.popen('df -h')
# print(out.readline())

# To execute the command we can use os module and subprocess.
# if you want execute the command with Agruement. It will give error so we have to make this list then execute it or True the value 
# the value of shell.


# import subprocess as sb
# x= sb.run('ls -l', shell=True)
# print(x)

# or 

# import subprocess as sb
# x= sb.run(['ls','-l'])
# print(x)

# if you want to to get the output of command then use the stdout and PIPE, Stdrerr.

import subprocess as sb
f1= open('dateout.txt','w')
f2= open('dateerr.txt','w')
y= sb.run('date',stdout=f1,stderr=f2)
f1.close()
f2.close()
# print(y.stdout.decode())
# print(y.stderr.decode())

# f1= open("output.txt",'w')
# f2= open("error.txt",'w')

# z= sb.run('ls -l', shell=True, stdout=f1, stderr=f2)
# f1.close()
# f2.close()
