//
//  ViewController.swift
//  (7) multipal btn swipe
//
//  Created by jenish on 27/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table_vieww: UITableView!
    var arrdata = ["apple","grapes","banana","pineapple","kivi","stwbeary","bluebeary"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table_vieww.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table_vieww.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arrdata[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction(style: .normal, title: "edit") { _, _, _ in
            print("edit butten tap")
        }
        
        let delet = UIContextualAction(style: .normal, title: "delet") { _,  _, _ in
            print("delet butten tap")
        }
        let swifeconfi = UISwipeActionsConfiguration(actions: [delet, edit])
        
        return swifeconfi
    }
}
