//
//  ViewController.swift
//  (1)tableview
//
//  Created by jenish on 19/01/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tableview: UITableView!
    
    var city = ["rajkot","ahemdabad","surat","junagad","kutch"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return city.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = city[indexPath.row]
        cell?.detailTextLabel?.text = city[indexPath.row]
        
        return cell!
    }
}




