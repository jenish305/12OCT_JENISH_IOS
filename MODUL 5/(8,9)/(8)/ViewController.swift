//
//  ViewController.swift
//  (8)
//
//  Created by jenish on 30/01/23.
//

import UIKit

let productlist = [
    
    productdata(sectiontype: "Mobail", productimage: ["iphone11","iphone13","iphone14","iphone 14 pro max","fold 2","z fold"], productname: ["Iphone11","Iphone13","Iphone14","Iphone13 pro max","Fold 2","Z fold"], productprice: ["50,000","70,000","99,000","1,50,000","1,50,000","1,70,000"]),
    ]

class ViewController: UIViewController {
    @IBOutlet weak var table_view: UITableView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table_view.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! MYTableViewCell
        
        cell.mycollecotion_view.tag = indexPath.section
        cell.mycollecotion_view.reloadData()
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return productlist.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return productlist[section].sectiontype
    }
    
    
}

