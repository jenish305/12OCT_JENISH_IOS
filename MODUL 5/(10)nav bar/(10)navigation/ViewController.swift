//
//  ViewController.swift
//  (10)navigation
//
//  Created by jenish on 31/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func _btn(_ sender: Any) {
        
        let alert = UIAlertController(title: "butten click", message: "alert action", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .destructive)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @IBAction func s_btn(_ sender: Any) {
        
        let alert = UIAlertController(title: "butten click", message: "aleat action", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .destructive)
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    
    
    
}

