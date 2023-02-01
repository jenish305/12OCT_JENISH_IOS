//
//  ViewController.swift
//  (6) increse hight cell
//
//  Created by jenish on 25/01/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var numarr = ["11111","22222","33333","44444","55555","66666","77777","88888","99999","00000"]
    
    @IBOutlet weak var table_view: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numarr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = numarr[indexPath.row]
        cell?.detailTextLabel?.text = numarr[indexPath.row]
        
        return cell!

    }
}

