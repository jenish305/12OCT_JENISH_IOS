//
//  ViewController.swift
//  (5)textfild_alert
//
//  Created by jenish on 09/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable_1: UILabel!
    @IBOutlet weak var lable_2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tap_btn(_ sender: Any) {
        
        let alert = UIAlertController(title: "Text Field", message: "Featch vale from textfield", preferredStyle: .alert)
                alert.addTextField {
                    field in
                    field.placeholder = "Enter the value"
                    field.textAlignment = .center
                }
                alert.addTextField {
                    field in
                    field.placeholder = "Enter the value"
                    field.textAlignment = .center
                }
                let action = UIAlertAction(title: "Cancle", style: .cancel)
                let getvalue = UIAlertAction(title: "Get Value", style: .default,handler: { (Action) in
                    self.lable_1.text = alert.textFields![0].text
                    self.lable_2.text = alert.textFields![1].text
                    
                })
                alert.addAction(action)
                alert.addAction(getvalue)
                present(alert, animated: true)
        
        
        
    }
}

