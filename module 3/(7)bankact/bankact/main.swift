//
//  main.swift
//  bankact
//
//  Created by jenish on 08/12/22.
//

import Foundation

class bank
{
    var balance:Int = 0
    func enterbalance()
    {
        
        print("enter the balance")
        balance = Int(readLine()!)!
    }
  func widrow()
        {
    print("enter the widrow amount")
  let amount = Int(readLine()!)!
     balance = balance - amount
            
    print("totle amount is  \(balance)")
          
        }
          func deposit()
          {
        
        print("enter the seposit amount :")
        let amount = Int(readLine()!)!
         balance = balance + amount
              
              print("totle balance : is \(balance)")
    }
    
}

var Ob = bank()
Ob.enterbalance()
print("Enter 'w' : to withdraw & 'd' : to deposit")
var ch = readLine()!
if ch == "w"
{
    Ob.widrow()
}
else if ch == "d"
{
    Ob.deposit()
}
else
{
    print("Invalide")
}
          
                      
       
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      




