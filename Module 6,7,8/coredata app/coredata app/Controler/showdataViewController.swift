//
//  showdataViewController.swift
//  coredata app
//
//  Created by jenish on 15/02/23.
//

import UIKit

class showdataViewController: UIViewController {
    
    var studData=[Info]()

    override func viewDidLoad() {
        super.viewDidLoad()
        fetch_data()
      
    }
    
    func fetch_data()
    {
        let dml=DMLModel()
        studData=dml.showdata()
    }

}

extension showdataViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell=TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_name.text=studData[indexPath.row].name
        cell.lbl_sub.text=studData[indexPath.row].subject
        cell.lbl_city.text=studData[indexPath.row].city
        cell.lbl_fullname.text=studData[indexPath.row].fullname
        cell.lbl_email.text=studData[indexPath.row].email
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            let dml=DMLModel()
            studData=dml.deletdata(index:indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
            
    }
}

