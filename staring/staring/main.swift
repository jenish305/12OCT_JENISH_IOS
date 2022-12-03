//
//  main.swift
//  staring
//
//  Created by jenish on 03/12/22.
//

import Foundation

var star = Array<String>()
var x:String = " "


print("enter the value of array : ")
var n = Int(readLine()!)!


for i in 0..<n{
    
    print("enter array[(i)]: ")
    x = readLine()!
    star.append(x)
    
    
}

var starinshort = star.sorted()
print(starinshort)
