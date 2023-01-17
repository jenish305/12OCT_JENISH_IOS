//
//  ViewController.swift
//  (11)picker_view_app
//
//  Created by jenish on 16/01/23.
//

import UIKit

class ViewController: UIViewController{
    
   
  
    
    
    @IBOutlet weak var text_fild: UITextField!
    var picker = UIPickerView()
    var arr:[String] = ["php","python","java",".net","c","c++","ios"]
    
    
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
        return arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        text_fild.text = arr[row]
    }
}



