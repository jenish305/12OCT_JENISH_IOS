//
//  main.swift
//  union_inter
//
//  Created by jenish on 03/12/22.
//

import Foundation

var arrayA:[Int] = []
var ArrayB:[Int] = []
var value = 0

print("enter the size of arrayA:")
var n = Int(readLine()!)!

for _ in 0..<n{
    
    print("enter the value of arrayA")
    value = Int(readLine()!)!
    
    arrayA.append(value)
    
    
}
for _ in 0..<n{
    
    print("enter tthe value of arrayB:")
    value = Int(readLine()!)!
    
    ArrayB.append(value)
}
var setA = Set(arrayA)
var setB = Set(ArrayB)
var answer = Set<Int>()

print("enter  the 'U'  uniuon & 'i' for instracson :" )
var choice = readLine()!

if choice == "U"{
    answer = setA.union(setB)
    print(answer)
}
else if choice == "I"
{
     answer = setA.intersection(setB)
    print(answer)
}else {
    print("Invalid 😓")
    
}
