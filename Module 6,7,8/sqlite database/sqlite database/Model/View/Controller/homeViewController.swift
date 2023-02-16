//
//  homeViewController.swift
//  sqlite database
//
//  Created by jenish on 14/02/23.
//

import UIKit

class homeViewController: UIViewController {
    
    @IBOutlet weak var txt_fullname: UITextField!
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_moballnumber: UITextField!
    @IBOutlet weak var txt_city: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func log_out_btn(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "signup")
        dismiss(animated: true, completion: nil)
        
    }
    

    @IBAction func save_btn(_ sender: Any) {
        
        saveuserData()
       
    }
    @IBAction func showdata_btn(_ sender: Any) {
        let showdataVC=storyboard?.instantiateViewController(identifier: "showdatavc") as! showdataViewController
        //navigationController?.pushViewController(showdataVC, animated: true)
        showdataVC.modalPresentationStyle = .fullScreen
        present(showdataVC, animated: true, completion: nil)
    }
    
    func saveuserData()
    {
        if txt_fullname.text=="" && txt_email.text=="" && txt_moballnumber.text=="" && txt_city.text==""
        {
            
            txt_fullname.layer.borderColor=UIColor.red.cgColor
            txt_fullname.layer.borderWidth=2.0
            txt_email.layer.borderColor=UIColor.red.cgColor
            txt_email.layer.borderWidth=2.0
            txt_moballnumber.layer.borderColor=UIColor.red.cgColor
            txt_moballnumber.layer.borderWidth=2.0
            txt_city.layer.borderColor=UIColor.red.cgColor
            txt_city.layer.borderWidth=2.0
            let alert=UIAlertController(title: "Error", message: "Please input all the details!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let savedata="insert into userdata(fullname,email,mobile,city) values ('\(txt_fullname.text!)','\(txt_email.text!)',\(txt_moballnumber.text!),'\(txt_city.text!)')"
            print(savedata)
            
            let dml=DMLOperations()
            let result=dml.dmlservices(query: savedata)
            
            if result==true
            {
                let alert=UIAlertController(title: "Success", message: "Your data has been saved!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
                
                txt_fullname.text=""
                txt_email.text=""
                txt_moballnumber.text=""
                txt_city.text=""
            }
            else
            {
                let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func update_btn(_ sender: Any) {
        let userupdate="update userdata set email='\(txt_email.text!)',mobile='\(txt_moballnumber.text!)',city='\(txt_city.text!)' where fullname='\(txt_fullname.text!)'"
        print(userupdate)
        
        let dml=DMLOperations()
        let result=dml.dmlservices(query: userupdate)
        
        if result==true
        {
            txt_fullname.text=""
            txt_email.text=""
            txt_moballnumber.text=""
            txt_city.text=""
            let alert=UIAlertController(title: "Success", message: "Your data has been updated!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func userDelete()
    {
        let userdelete="delete from userdata where fullname='\(txt_fullname.text!)'"
        print(userdelete)
        
        let dml=DMLOperations()
        let result=dml.dmlservices(query: userdelete)
        
        if result==true
        {
            txt_fullname.text=""
            let alert=UIAlertController(title: "Success", message: "Your data has been deleted!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let alert=UIAlertController(title: "Error", message: "Something went wrong...Try again!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func delete_btn(_ sender: Any) {
        
        userDelete()
    }
    

    
}
