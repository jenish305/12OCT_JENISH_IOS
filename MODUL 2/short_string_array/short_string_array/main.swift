//
//  main.swift
//  short_string_array
//
//  Created by jenish on 03/12/22.
//

import Foundation

var strarr = Array<String>()
var x:String = ""

print("Enter the size of array:")
var n = Int(readLine()!)!

for i in 0..<n{
    print("Enter arr[\(i)]:")
    x = readLine()!
    strarr.append(x)
}
 var stringshort = strarr.sorted()
print(stringshort)

