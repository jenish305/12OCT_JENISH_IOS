//
//  main.swift
//  maximum_number
//
//  Created by jenish on 30/11/22.
//

import Foundation

print("Enter the value of a:")
var a = Int(readLine()!)!


print("Enter the value of B: ")
var B = Int(readLine()!)!

print("Enter the value of C:")
var C = Int(readLine()!)!

if a > B && a > C{
    print("\(a)is maximum number")
}

else if B > C && B > C{
    print("\(B)is maximum number")
}

else{
    print("\(C)is maximum number")
}



