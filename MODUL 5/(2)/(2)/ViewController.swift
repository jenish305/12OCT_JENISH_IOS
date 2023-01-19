//
//  ViewController.swift
//  (2)
//
//  Created by jenish on 19/01/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var arr = ["India","china","USA","Canada","newziland","Brazil","Argentina"]
    var arr2 = ["japan","russia","europe","pakistan","nepal","taiwan","south korea"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = arr[indexPath.row]
        cell?.detailTextLabel?.text = arr2[indexPath.row]
        return cell!
    }
}

