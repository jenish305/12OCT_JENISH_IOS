//
//  main.swift
//  spacific_position
//
//  Created by jenish on 03/12/22.
//

import Foundation

import Foundation

var arr:[Int] = [1,2,3,4,5]
var position:Int = 0

print("Enter the New element of array:")
var newelement = Int(readLine()!)!

print("Enter the position:")
position = Int(readLine()!)!

arr.insert(newelement, at: position)

print(arr)
