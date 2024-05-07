#! /bin/bash

import os 

#out=os.system('mkdir dir1')
#out=os.popen("df -h")
#print(out.readlines())

import subprocess as sb

#out=sb.run('df -h',shell=True)
#print(out)

#x=sb.run('date',stdout=sb.PIPE,stderr=sb.PIPE)

#print(x.returncode)
#print(x.stdout.decode())
#print(x.stderr.decode())

#f1=open("output.txt","w")
#f2=open("error.txt","w")

#y=sb.run('lsblk',shell=True,stdout=f1,stderr=f2)

#f1.close()
#f2.close()

#popen

p1=sb.Popen("ls -l",shell=True,stdout=sb.PIPE,stderr=sb.PIPE,universal_newlines=True)
pprint.pprint(p1.communicate())
print(p1.communicate())
