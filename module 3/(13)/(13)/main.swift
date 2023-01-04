//
//  main.swift
//  (13)
//
//  Created by jenish on 03/01/23.
//

import Foundation


var temp = 0
print("enter the value of a:")
var a = Int(readLine()!)!

print("Enter the value of b:")
var b = Int(readLine()!)!

temp = a
a = b
b = temp

print("a:\(a) & b:\(b)")

