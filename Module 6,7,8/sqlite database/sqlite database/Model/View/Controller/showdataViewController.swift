//
//  showdataViewController.swift
//  sqlite database
//
//  Created by jenish on 14/02/23.
//

import UIKit

class showdataViewController: UIViewController {
    
    var udata=Array<Any>()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fetchalldata()
    {
        let userdata="select * from userdata"
        
        let dml=DMLOperations()
        udata=dml.alluserdata(query: userdata)
        print(udata)
    }
   

}


extension showdataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return udata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dict=udata[indexPath.row] as! Dictionary<String,Any>
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_fullname.text=dict["fullname"] as? String
        cell.lbl_email.text=dict["email"] as? String
        cell.lbl_mobailnumber.text=dict["mobile"] as? String
        cell.lbl_city.text=dict["city"] as? String
        return cell
    }
    
    
}

