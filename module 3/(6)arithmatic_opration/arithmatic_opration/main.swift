//
//  main.swift
//  arithmatic_opration
//
//  Created by jenish on 10/12/22.
//

import Foundation

func addition(a:Int , b:Int) -> Int{
    return a+b
}

func substracton(a:Int , b:Int) -> Int{
    return a-b
}

func multiply(a:Int, b:Int) -> Int{
    return  a*b
    
}

func division(a:Float, b:Float) -> Float{
    return a/b
}

func modulo(a:Int , b:Int) -> Int{
    return a%b
    
}

print(" enter the value of a: ")
var a = Int(readLine()!)!

print("enter the value of  b: ")
var b = Int(readLine()!)!


print("'+' : addition , '-' : substraction, '*' : multiply , '/' dividion, '%' : modulo :")
var choice = readLine()!


switch (choice){
    case "+":print("sum is: \(addition(a: a, b: b))")
        break
    case "-":print("subtraction is: \(substracton(a: a, b: b))")
        break
    case "*":print("product is: \(multiply(a: a, b: b))")
        break
case "/":print("Division is: \(division(a: Float(a), b: Float(b)))")
       break
    case "%":print("Reminser is: \(modulo(a: a, b: b))")
        break
    default:print("Invalide!")

}






