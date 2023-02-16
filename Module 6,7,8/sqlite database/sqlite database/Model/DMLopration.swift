//
//  DMLopration.swift
//  sqlite database
//
//  Created by jenish on 14/02/23.
//

import UIKit
import SQLite3

class DMLOperations: NSObject {

    var strpath=""
    func dmlservices(query:String)->Bool
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/signup.db"
        
        var status=false
        var statement:OpaquePointer?=nil
        
        if sqlite3_open(strpath, &statement)==SQLITE_OK
        {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil)==SQLITE_OK
            {
                status=true
                sqlite3_step(statement)
            }
            sqlite3_finalize(statement)
            sqlite3_close(statement)
        }
        return status
    }
    
    func userlogin(query:String)->Array<Any>
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/topsdb.db"
        
        var data=Array<Any>()
        var statement:OpaquePointer?=nil
        
        if sqlite3_open(strpath, &statement)==SQLITE_OK
        {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil)==SQLITE_OK
            {
                while sqlite3_step(statement)==SQLITE_ROW
                {
                    
                    let unm=String.init(cString: sqlite3_column_text(statement, 3))
                    let pas=String.init(cString: sqlite3_column_text(statement, 4))
                    data.append(unm)
                    data.append(pas)
                }
                sqlite3_finalize(statement)
                sqlite3_close(statement)
            }
        }
        return data
    }
    
    func alluserdata(query:String)->Array<Any>
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/topsdb.db"
        
        var data=Array<Any>()
        var dict=Dictionary<String,Any>()
        var statement:OpaquePointer?=nil
        
        if sqlite3_open(strpath, &statement)==SQLITE_OK
        {
            if sqlite3_prepare_v2(statement, query, -1, &statement, nil)==SQLITE_OK
            {
                while sqlite3_step(statement)==SQLITE_ROW
                {
                    let fnm=String.init(cString: sqlite3_column_text(statement, 1))
                    let email=String.init(cString: sqlite3_column_text(statement, 2))
                    let mob=String.init(cString: sqlite3_column_text(statement, 3))
                    let ct=String.init(cString: sqlite3_column_text(statement, 4))
                    
                    dict["fullname"]=fnm
                    dict["email"]=email
                    dict["mobile"]=mob
                    dict["city"]=ct
                    
                    data.append(dict)
                    /*data.append(fnm)
                    data.append(email)
                    data.append(mob)
                    data.append(ct)*/
                    
                }
                sqlite3_finalize(statement)
                sqlite3_close(statement)
            }
        }
        return data
    }
}

