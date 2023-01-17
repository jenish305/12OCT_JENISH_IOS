//
//  ViewController.swift
//  (9)picker
//
//  Created by jenish on 12/01/23.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var text_fild: UITextField!
    

        let picker = UIPickerView()
            let music:[String] = ["MP3","MP4","VIDEO4K"]
            override func viewDidLoad() {
                super.viewDidLoad()
                picker.delegate = self
                picker.dataSource = self
                text_fild.inputView = picker
        
      
    }
    
}

extension ViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return music.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return music[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        text_fild.text = music[row]
    }
    
}
        
    

