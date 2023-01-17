//
//  ViewController.swift
//  (4)hide_show_lable
//
//  Created by jenish on 07/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lable_: UIView!
    
   
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loadingthe view.
        
    
    }

    @IBAction func hide_btn(_ sender: UIButton) {
        
        lable_.isHidden = true
        
    }
    
            
        
    @IBAction func show_btn(_ sender: UIButton) {
        
        lable_.isHidden = false
    }
}
    


