//
//  main.swift
//  menu_drive
//
//  Created by jenish on 30/11/22.
//

import Foundation

var a = 0 ,b = 0
var choice:String = ""

print("enter the vale of a:")
a = Int(readLine()!)!

print("enter the value of b: ")
b = Int(readLine()!)!


print("enter the value and  to perform the follwing opretion")

print("+ :Addition")
print("- :Subtraction")
print("* :Multiplication")
print("/ :Division")
print("% :Modulo")

print("enter the choice:")
choice = readLine()!

switch(choice)

{
case "+": print("sum:\(a+b)")
    
case "-": print("subtraction:\(a-b)")
    
case "*": print("Product:\(a*b)")

case "/": print("Division:\(a/b)")
    
case "%": print("Modulo:\(a%b)")
    
default: print("Invalid 😕")
    
}
