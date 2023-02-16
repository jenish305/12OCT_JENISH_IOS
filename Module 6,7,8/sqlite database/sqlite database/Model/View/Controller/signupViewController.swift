//
//  signupViewController.swift
//  sqlite database
//
//  Created by jenish on 14/02/23.
//

import UIKit

class signupViewController: UIViewController {
    
    
    @IBOutlet weak var txt_firstname: UITextField!
    @IBOutlet weak var txt_lastname: UITextField!
    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    
    func usersignup()
    {
        if txt_firstname.text=="" && txt_lastname.text=="" && txt_password.text==""
        {
            txt_firstname.layer.borderColor=UIColor.red.cgColor
            txt_firstname.layer.borderWidth=2.0
            txt_lastname.layer.borderColor=UIColor.red.cgColor
            txt_lastname.layer.borderWidth=2.0
            txt_username.layer.borderColor=UIColor.red.cgColor
            txt_username.layer.borderWidth=2.0
            txt_password.layer.borderColor=UIColor.red.cgColor
            txt_password.layer.borderWidth=2.0
            let alert = UIAlertController(title: "error", message: "please input all details ", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style: .default ,handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
    
        }
        else
        {
            let insertuser="insert into signup(fname,lname,uname,password) values ('\(txt_firstname.text!)','\(txt_lastname.text!)','\(txt_username.text!)','\(txt_password.text!)')"
            print(insertuser)
            
            let dml=DMLOperations()
            let result=dml.dmlservices(query: insertuser)
            
            if result==true
            {
                print("User created successfully!")
                navigationController?.popViewController(animated: true)
            }
            else
            {
                print("Error!Somthing went wrong....")
            }
        }
    }
    
    
    @IBAction func btn_signup(_ sender: Any) {
        
        usersignup()
        
        }
    }
    

