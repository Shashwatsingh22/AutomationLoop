#!/usr/bin/python3
import cgi
import mainfunc
import ast


print("content-type: text/html")
print()
mydata = cgi.FieldStorage()

play = mydata.getvalue("method")
detail = mydata.getvalue("detail")

detail=ast.literal_eval(detail)

mainfunc.main_1(play,detail,mydata)