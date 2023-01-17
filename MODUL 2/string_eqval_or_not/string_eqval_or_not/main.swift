//
//  main.swift
//  string_eqval_or_not
//
//  Created by jenish on 03/12/22.
//

import Foundation

print("enter the strig : ")
var str1 = readLine()!
            
print("enter the string 2:")
var str2 = readLine()!

            if str1 == str2{
    str1 = str1+" "+str2
    print("combin string:\(str1)")
    
}else{
    
    print("not equal...!")
}
