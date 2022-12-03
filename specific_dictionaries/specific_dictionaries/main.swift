//
//  main.swift
//  specific_dictionaries
//
//  Created by jenish on 02/12/22.
//

import Foundation

var array:[Int] = [1,2,3,4]
var posistion:Int = 0

print("enter the new element of arrar : ")
 var newelement = Int(readLine()!)!

print("enter the posistion : ")
posistion = Int(readLine()!)!


array.insert(newelement, at: posistion)

print(array)
