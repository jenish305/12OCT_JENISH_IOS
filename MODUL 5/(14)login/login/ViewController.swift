//
//  ViewController.swift
//  login
//
//  Created by jenish on 03/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var data:[String] = []
    
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "myplist", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: path!)
        data = dic?.object(forKey: "sign up") as! [String]
        if UserDefaults.standard.bool(forKey: "ok")
        {
            let nav = storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
            navigationController?.pushViewController(nav, animated: true)
       
        }
    }

    @IBAction func login_btn(_ sender: Any) {
        
        if username.text == data[0] && password.text == data[1]{
            UserDefaults.standard.set(true, forKey: "ok")
            let nav = storyboard?.instantiateViewController(withIdentifier: "home") as! homeViewController
            navigationController?.pushViewController(nav, animated: true)
            
        } else{
            let alert = UIAlertController(title: "login fail", message: "inputs are invalid", preferredStyle: .alert)
            let act = UIAlertAction(title: "OK", style: .default)
            alert.addAction(act)
            present(alert, animated: true)
        }
    }
    
}

