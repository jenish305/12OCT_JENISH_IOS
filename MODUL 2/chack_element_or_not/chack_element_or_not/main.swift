//
//  main.swift
//  chack_element_or_not
//
//  Created by jenish on 03/12/22.
//

import Foundation

var arr = Array<Int>()
var x = 0

print("Enter the size of set:")
var n = Int(readLine()!)!

for _ in 0..<n
{
    print("Enter the value:")
    x = Int(readLine()!)!
    arr.append(x)
    
}
var sets = Set(arr)

print("Enter the element for checking...")
var a = Int(readLine()!)!

var result = sets.contains(a)
if result == true{
    print("\(a) is present  in set")
}else{
    print("\(a) is not present in set")
}


