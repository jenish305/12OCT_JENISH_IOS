//
//  main.swift
//  11)protocl
//
//  Created by jenish on 22/12/22.
//

import Foundation

@objc protocol methods{
    func add(number1:Int,number2:Int)
    @objc optional func sub(number1:Int,number2:Int)
}

class calculation: methods
{
    func add(number1: Int, number2: Int) {
            print("addtion:\(number1 + number2)")
    }
    func sub(number1: Int, number2: Int) {
        print("subtration:\(number1 - number2)")
    }
    
}


var cal = calculation()
print("enter number 1")
var a = Int(readLine()!)!
print("enter number 2")
var b = Int(readLine()!)!
cal.add(number1: a, number2: b)
cal.sub(number1: a, number2: b)

