//
//  main.swift
//  10) structure
//
//  Created by jenish on 22/12/22.
//

import Foundation

struct bankdetails
{
    var account:Int = 0
    var balance:Int = 0
    var name:String = ""
    
}


var a = bankdetails()
var bnk: [bankdetails] = []
for _ in 0...9
        
{
    print("enter account no:")
    a.account = Int(readLine()!)!
    print("enter totle balance")
    a.balance = Int(readLine()!)!
    print("enter name:")
    a.name = readLine()!
    bnk.append(a)
}
for i in 0...9
{
    print("\n")
    print("account no : \(bnk[i].balance)")
    print("balance : \(bnk[i].balance)")
    print("name : \(bnk[i].name)")
    print("\n")
    
}
