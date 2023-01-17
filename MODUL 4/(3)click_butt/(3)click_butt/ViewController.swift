//
//  ViewController.swift
//  (3)click_butt
//
//  Created by jenish on 07/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text_fill: UITextField!
    @IBOutlet weak var lable_: UILabel!
    
    @IBAction func but_ok(_ sender: UIButton) {
        
        lable_.text = text_fill.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }


}

