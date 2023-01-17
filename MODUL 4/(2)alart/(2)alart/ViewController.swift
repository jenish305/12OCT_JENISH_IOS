//
//  ViewController.swift
//  (2)alart
//
//  Created by jenish on 06/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user_name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func log_in(_ sender: UIButton) {
        
        
        let alart = UIAlertController(title: "Alert", message: "Log in sucess", preferredStyle: .alert)
        
        let canclbt = UIAlertAction(title: "ok", style: .cancel)
        alart.addAction(canclbt)
        
      
        
        present(alart, animated: true , completion: nil)
        
        
    }
    
}

