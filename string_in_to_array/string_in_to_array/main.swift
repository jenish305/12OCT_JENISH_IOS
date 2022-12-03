//
//  main.swift
//  string_in_to_array
//
//  Created by jenish on 02/12/22.
//

import Foundation

var array:[String] = []
var name:String = ""

print("enter the size fo array :")
var a = Int(readLine()!)!

for _ in 0..<a
{
    print("enter the name :")
    name = (readLine())!
    
    array.append(name)
    
}

print(array)
