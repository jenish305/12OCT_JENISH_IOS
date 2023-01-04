//
//  main.swift
//  (8)employclass
//
//  Created by jenish on 03/01/23.
//

import Foundation

class Employe
{
    var name:String = ""
    var slary:Int = 0
    var role:String = ""
    func getdata()
    {
        print("Enter Name:")
        name = readLine()!
        
        print("Enter salary:")
        slary = Int(readLine()!)!
        
        print("Enter role :")
        role = readLine()!
        
    }
    func printDetails()
    {
        print("Name:\(name)")
        print("Salary:\(slary)")
        print("Role:\(role)")
    }
    
}
class Manager: Employe
{
    var teamMember:Int = 0
    var bonus:Int = 0
    func teamdata()
    {
        print("Enter no of team member:")
        teamMember = Int(readLine()!)!
        print("Enter bonus:")
        bonus = Int(readLine()!)!
        
    }
    func mgdetails()
    {
        print("Team size:\(teamMember)")
        print("Bonuse:\(bonus)")
    }
        
}
var mg = Manager()
mg.getdata()
mg.teamdata()
mg.printDetails()
mg.mgdetails()

    
    
   

  

