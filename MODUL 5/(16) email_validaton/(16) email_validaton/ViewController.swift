//
//  ViewController.swift
//  (16) email_validaton
//
//  Created by jenish on 04/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var email_txtfild: UITextField!
    
    @IBOutlet weak var phonenumber_txtfild: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func submit(_ sender: Any) {
    
    
        
        if email_txtfild.text! == "" && phonenumber_txtfild.text! == ""{
                   let alert = UIAlertController(title: "invalid input", message: "enter proper value", preferredStyle: .alert)
                   let action = UIAlertAction(title: "ok", style: .destructive)
                   alert.addAction(action)
                   present(alert, animated: true)
                   
               }
               else
               {
                   let nav = storyboard?.instantiateViewController(withIdentifier: "secound") as! secoundViewController
                   navigationController?.pushViewController(nav, animated: true)
                   
               }
        
    }
    
}

