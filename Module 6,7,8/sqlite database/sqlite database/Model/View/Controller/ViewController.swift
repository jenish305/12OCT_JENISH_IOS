//
//  ViewController.swift
//  sqlite database
//
//  Created by jenish on 14/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: "cuser")
        {
            let homeVC=self.storyboard?.instantiateViewController(identifier: "homeVC") as! homeViewController
            homeVC.modalPresentationStyle = .fullScreen
            self.present(homeVC, animated: true, completion: nil)
        }
        /*else
        {
            let mainVC=storyboard?.instantiateViewController(identifier: "mainVC") as! ViewController
            mainVC.modalPresentationStyle = .fullScreen
            present(mainVC, animated: true, completion: nil)
        }*/
        // Do any additional setup after loading the view.
    }
    
    func userLogin()
    {
        if txt_username.text=="" || txt_password.text==""
        {
            txt_username.layer.borderWidth=2.0
            txt_username.layer.borderColor=UIColor.red.cgColor
            txt_password.layer.borderWidth=2.0
            txt_password.layer.borderColor=UIColor.red.cgColor
            
            let alert=UIAlertController(title: "Error", message: "Please enter username and password!", preferredStyle: .alert)
            let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        else
        {
            let login_query="select * from signup where uname='\(txt_username.text!)' and password='\(txt_password.text!)'"
            print(login_query)
            
            let dml=DMLOperations()
            let dt=dml.userlogin(query: login_query)
            
            if dt.count>0
            {
                UserDefaults.standard.setValue(true, forKey: "signup")
                let alert=UIAlertController(title: "Success", message: "Login Successfully!😎", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler:{ACTION in
                    
                    let homeVC=self.storyboard?.instantiateViewController(identifier: "homeVC") as! homeViewController
                    //self.navigationController?.pushViewController(homeVC, animated: true)
                    homeVC.modalPresentationStyle = .fullScreen
                    self.present(homeVC, animated: true, completion: nil)
                })
                alert.addAction(ok)
                present(alert, animated: true, completion: nil)
            }
            else
            {
                let alert=UIAlertController(title: "Error", message: "Username or Password does't match!😕", preferredStyle: .alert)
                let ok=UIAlertAction(title: "OK", style: .default, handler: nil)
                let more=UIAlertAction(title: "MORE", style: .destructive, handler: nil)
                alert.addAction(ok)
                alert.addAction(more)
                present(alert, animated: true, completion: nil)
            }
        }
        
     
    
    }

    @IBAction func log_in(_ sender: Any) {
        userLogin()
    }
    
    @IBAction func sign_up(_ sender: Any) {
        let signupVC=storyboard?.instantiateViewController(identifier: "signupvc") as! signupViewController
        navigationController?.pushViewController(signupVC, animated: true)
    }
    
}

