//
//  DMLopration.swift
//  coredata app
//
//  Created by jenish on 15/02/23.
//

import Foundation
import CoreData
import UIKit


class DMLModel: NSObject {
    
    let cotext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func savedata(data:[String:Any])
    {
        let insertdata=NSEntityDescription.insertNewObject(forEntityName: "Info", into: cotext) as! Info
        insertdata.subject=(data["subject"]as! String)
        insertdata.name=(data["name"]as! String)
        insertdata.fullname=(data["fullname"]as! String)
        insertdata.email=(data["email"]as! String)
        insertdata.city=(data["city"]as! String)
    }
    
    
    func showdata()->[Info]
    {
        var stdata=[Info]()
        do
        {
            stdata=try cotext.fetch(NSFetchRequest<NSFetchRequestResult>.init(entityName: "Info")) as! [Info]
        }
        catch
        {
            print(error.localizedDescription)
        }
        return stdata
        
    }
    
    func deletdata(index:Int)->[Info]
    {
        var stdata=showdata()
        cotext.delete(stdata[index])
        stdata.remove(at: index)
        
        do
        {
            try cotext.save()
        }
        catch
        {
            print(error.localizedDescription)
        }
        return stdata
    }
}
