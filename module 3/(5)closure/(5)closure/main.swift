//
//  main.swift
//  (5)closure
//
//  Created by jenish on 30/12/22.
//

import Foundation

var arr:[Int] = [1,3,2,6,4,5,7,9,8]


var sorted = {
    (str:[Int]) -> [Int] in
    
    return str.sorted()
}

print("\(sorted(arr))")
s
