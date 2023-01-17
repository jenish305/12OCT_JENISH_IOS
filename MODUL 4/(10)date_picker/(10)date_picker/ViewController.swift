//
//  ViewController.swift
//  (10)date_picker
//
//  Created by jenish on 16/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dt_picker: UIDatePicker!
    @IBOutlet weak var lable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
            
    }

    
    @IBAction func datepickerfuncuton(_ sender: Any) {
        
        let getdate = dt_picker.date
        let setdate = DateFormatter()
        setdate.dateStyle = .short
        lable.text = setdate.string(from: getdate)
    }
    

}

