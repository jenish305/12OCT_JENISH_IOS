//
//  ViewController.swift
//  (4)
//
//  Created by jenish on 24/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var arr = ["BMW","AUDI","MAR","LEMBO"]
    var arr2 = ["1.cr.peg","2.cr.png","3.cr.jpeg","4.cr.jpng"]
   
    
    @IBOutlet weak var table_view: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table_view.delegate = self
        table_view.dataSource  = self
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.img.image = UIImage(named: arr2[indexPath.row])
        cell.lable.text = arr[indexPath.row]
        
       
        return cell
    }
}

