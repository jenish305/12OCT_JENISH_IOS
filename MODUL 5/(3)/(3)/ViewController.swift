//
//  ViewController.swift
//  (3)
//
//  Created by jenish on 24/01/23.
//

import UIKit

class ViewController: UIViewController {
 
   
 
    
    
    let arr = ["apple","mango","grapes","banana","kivi","pineapple"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.lable.text = arr[indexPath.row]
        return cell
    }
    
    
}

