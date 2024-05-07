#!/bin/bash

import os 

file=os.listdir("/home/arvind/")

import glob

files=glob.glob("/home/arvind/**/*.txt",recursive=True)

with open("alldata.txt","a") as f:
    for file in files:
        with open(file,"r+") as f1:
            f.write(f1.read())
            f1.truncate(0)
