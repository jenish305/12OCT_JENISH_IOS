//
//  main.swift
//  (9)overloading
//
//  Created by jenish on 03/01/23.
//

import Foundation

class Opration{
    
    var number1:Int = 0
    var number2:Int = 0
    
    func getdata()
    {
        print("Enter Number 1:")
        number1 = Int(readLine()!)!
        
        print("Enter Number 2:")
        number2 = Int(readLine()!)!
    }
    func Task()
    {
        var sum = number1 + number2
        print("Sum:\(sum)")
    }
    func otherTask()
    {
        var sum = number1 - number2
        print("Subtraction:\(sum)")
    }
        
}
class OterOperation :Opration
{
    override func getdata(){
        print("Enter Number 1:")
        number1 = Int(readLine()!)!
        
        print("Enter Number 2:")
        number2 = Int(readLine()!)!
    }
    override func Task() {
        var sum = number1*number2
        print("Multiplication:\(sum)")
    }
    override func otherTask() {
        var sum = number1 / number2
        print("Division:\(sum)")
    }
}

var opo = OterOperation()
opo.getdata()
opo.Task()
opo.otherTask()
