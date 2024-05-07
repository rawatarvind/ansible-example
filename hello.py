#!/bin/bash

values=input("Input some comma seprated numbers:")
list= values.split(",")
tuple=tuple(list)

print('list:',list)
print('Tuple"',tuple)

filename=input("input the filename:")
f_extns=filename.split(".")
print("The extension of the file:",f_extns)
