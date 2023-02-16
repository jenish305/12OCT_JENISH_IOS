//
//  ViewController.swift
//  coredata app
//
//  Created by jenish on 15/02/23.
//

import UIKit
import CoreData


class ViewController: UIViewController {
    
    
    let context=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var txt_subject: UITextField!
    @IBOutlet weak var txt_name: UITextField!
    @IBOutlet weak var txt_fullname: UITextField!
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(path)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_save(_ sender: Any)
    {
        let dt=["subject":txt_subject.text!,
                "name":txt_name.text!,
                "fullname":txt_fullname.text!,
                "email":txt_email.text!,
                "city":txt_city.text!]
        
        let dml=DMLModel()
        dml.savedata(data: dt)
        do
        {
            try context.save()
            txt_subject.text=""
            txt_name.text=""
            txt_fullname.text=""
            txt_email.text=""
            txt_city.text=""
            let alert=UIAlertController(title: "success", message: "record insert", preferredStyle: .alert)
            let ook=UIAlertAction(title: "ok", style: .default, handler: nil)
            present(alert, animated: true, completion: nil)
            
        }
        catch
        {
            print(error.localizedDescription)
            let alert=UIAlertController(title: "error", message: "somthing went wrong", preferredStyle: .alert)
            let ok=UIAlertAction(title: "ok", style: .default, handler: nil)
            let more=UIAlertAction(title: "more", style: .destructive, handler: nil)
            alert.addAction(ok)
            alert.addAction(more)
            present(alert, animated: true, completion: nil)
        }
       
    }
    
    @IBAction func btn_showdata(_ sender: Any)
    {
        let showvc=storyboard?.instantiateViewController(withIdentifier: "showdatavc") as! showdataViewController
        navigationController?.pushViewController(showvc, animated: true)
    }
    
    @IBAction func btn_update(_ sender: Any)
    {
        let fatchreq=NSFetchRequest<NSManagedObject>.init(entityName: "Info")
        let pred=NSPredicate(format: "name=%@", txt_name.text!)
        fatchreq.predicate=pred
        
        do
        {
            let dml=DMLModel()
            let stdata=try dml.cotext.fetch(fatchreq)
            
            if  stdata.count>=1
            {
                let update=stdata[0]
                update.setValue(txt_subject.text!, forKey: "subject")
                update.setValue(txt_city.text!, forKey: "city")
                try context.save()
                print("record update")
                
                txt_name.text=""
                txt_subject.text=""
                txt_city.text=""
                txt_email.text=""
                txt_fullname.text=""
                
            }
            
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
}

