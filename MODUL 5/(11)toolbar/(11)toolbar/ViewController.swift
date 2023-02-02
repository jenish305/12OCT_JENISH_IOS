//
//  ViewController.swift
//  (11)toolbar
//
//  Created by jenish on 02/02/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func blue_screen(_ sender: Any) {
    let nav = self.storyboard?.instantiateViewController(withIdentifier: "blue") as! blueViewController
               navigationController?.pushViewController(nav, animated: true)
        
    }
    
    @IBAction func green_screen(_ sender: Any) {
     let nav = self.storyboard?.instantiateViewController(withIdentifier: "green") as! greenViewController
               navigationController?.pushViewController(nav, animated: true)
    }
    
    @IBAction func red_screen(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "red") as! redViewController
               navigationController?.pushViewController(nav, animated: true)
    }
    
    @IBAction func yellow_screen(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "yellow") as! yellowViewController
               navigationController?.pushViewController(nav, animated: true)
    }
    
    @IBAction func orange_screen(_ sender: Any) {
        let nav = self.storyboard?.instantiateViewController(withIdentifier: "orange") as! orangeViewController
               navigationController?.pushViewController(nav, animated: true)
    }
}

