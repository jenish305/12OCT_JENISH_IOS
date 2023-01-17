//
//  ViewController.swift
//  (13)colour_picker
//
//  Created by jenish on 17/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker_view: UIPickerView!
    var arr:[String] = ["red","orange","blue","yellow","gray","green"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
        if row == 0{
            view.backgroundColor = .red
        }else if row == 1{
            view.backgroundColor = .orange
        }else if row == 2{
            view.backgroundColor = .blue
        }else if row == 3{
            view.backgroundColor = .yellow
        }else if row == 4{
            view.backgroundColor = .darkGray
        }else{
            view.backgroundColor = .green
        }
    }
}
