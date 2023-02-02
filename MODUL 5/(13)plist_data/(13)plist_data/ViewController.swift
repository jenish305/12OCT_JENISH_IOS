//
//  ViewController.swift
//  (13)plist_data
//
//  Created by jenish on 02/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var states = [String]()
    var capital = [String]()

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "myplist", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        states = dict?.object(forKey: "states") as! [String]
        capital = dict?.object(forKey: "capital") as! [String]
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destaination = segue.destination as? capitalViewController{
            
            destaination.data = capital[tableview.indexPathForSelectedRow!.row]
        }
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return states.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = states[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    
}
