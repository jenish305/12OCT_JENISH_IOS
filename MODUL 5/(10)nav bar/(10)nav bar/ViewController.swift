//
//  ViewController.swift
//  (10)nav bar
//
//  Created by jenish on 02/02/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func edit_btn(_ sender: Any) {
        let alert = UIAlertController(title: "button click", message: "alert action", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .destructive)
            alert.addAction(action)
            present(alert, animated: true)
        
    }
    
    @IBAction func save_btn(_ sender: Any) {
        let alert = UIAlertController(title: "button click", message: "alert action", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .destructive)
            alert.addAction(action)
            present(alert, animated: true)
        
    }
    
    
}

