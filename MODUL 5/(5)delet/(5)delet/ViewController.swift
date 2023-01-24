//
//  ViewController.swift
//  (5)delet
//
//  Created by jenish on 24/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tablevieww: UITableView!
    var arr = ["apple","mango","pineaaple","banana","kivi","stawbaery"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.lable_txt.text = arr[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arr.remove(at: indexPath.row)
            tablevieww.deleteRows(at: [indexPath], with: .fade)
        }
        
    }
    
}

