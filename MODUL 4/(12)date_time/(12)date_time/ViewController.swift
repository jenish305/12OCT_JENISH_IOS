//
//  ViewController.swift
//  (12)date_time
//
//  Created by jenish on 16/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func set_timeanddate(_ sender: UIDatePicker) {
        
               let getDate = sender.date
               let setFormate = DateFormatter()
               setFormate.dateFormat = "dd/MM/yyyy hh:mm:ss"
        lable.text = setFormate.string(from: getDate)
        

        
        
        
    }
    
    
}

