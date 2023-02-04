//
//  ViewController.swift
//  textfild_validation
//
//  Created by jenish on 04/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstname_txtfild: UITextField!
    @IBOutlet weak var lastname_txtfild: UITextField!
    @IBOutlet weak var email_txtfild: UITextField!
    @IBOutlet weak var phone_txtfild: UITextField!
    @IBOutlet weak var city_txtfild: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func validation()
    {
        if firstname_txtfild.text == "" || lastname_txtfild.text == "" || email_txtfild.text == "" || phone_txtfild.text == "" || city_txtfild.text == ""{
            if firstname_txtfild.text == ""{
                firstname_txtfild.layer.borderColor = UIColor.red.cgColor
                firstname_txtfild.layer.borderWidth = 2.0
            }else{
                firstname_txtfild.layer.borderColor = .none
            }
            if lastname_txtfild.text == ""{
                lastname_txtfild.layer.borderColor = UIColor.red.cgColor
                lastname_txtfild.layer.borderWidth = 2.0
            }
            else{
                lastname_txtfild.layer.borderColor = .none
            }
            if email_txtfild.text == ""{
                email_txtfild.layer.borderWidth = 2.0
                email_txtfild.layer.borderColor = UIColor.red.cgColor
            }
            else{
                email_txtfild.layer.borderColor = .none
            }
            if phone_txtfild.text == ""{
                phone_txtfild.layer.borderColor = UIColor.red.cgColor
                phone_txtfild.layer.borderWidth = 2.0
            }
            else{
                phone_txtfild.layer.borderColor = .none
            }
            if city_txtfild.text == ""{
                city_txtfild.layer.borderColor = UIColor.red.cgColor
                city_txtfild.layer.borderWidth = 2.0
            }
            else{
                city_txtfild.layer.borderColor = .none
            }
            let alert = UIAlertController(title: "Input Missing", message: "Enter data in text feild", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
        }
        else{
            let nav = storyboard?.instantiateViewController(withIdentifier: "secound") as! secoundViewController
            navigationController?.pushViewController(nav, animated: true)
        }
    }
        
        @IBAction func submit_btn(_ sender: Any) {
            validation()
            
            
        }
        
    }
    
    
    

