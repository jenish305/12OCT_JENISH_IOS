//
//  main.swift
//  swap_two_numbers
//
//  Created by jenish on 03/12/22.
//

import Foundation

func swap(no1:Int,no2:Int){
    var a = no1 , b = no2,temp:Int
    temp = a
    a = b
    b = temp
    
    
    print("value of a is \(a) & b is \(b)")
    
}

var a:Int,b:Int,temp:Int

print("enter the value of a :")
a = Int(readLine()!)!


print("enter the value of b :")
b = Int(readLine()!)!

swap(no1: a, no2: b)
