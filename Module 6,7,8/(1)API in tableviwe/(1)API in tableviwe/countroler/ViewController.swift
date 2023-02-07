//
//  ViewController.swift
//  (1)API in tableviwe
//
//  Created by jenish on 06/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var apidata=[APIModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAPI()
        
    }
    
    @IBOutlet weak var mytable: UITableView!
    func loadAPI()
    {
        let url = URL(string: "https://restcountries.com/v2/all")
        URLSession.shared.dataTask(with: url!) { (data,response, error) in
            do
            {
                
                self.apidata=try JSONDecoder().decode([APIModel].self, from: data!)
                print(self.apidata)
                
                DispatchQueue.main.async {
                    self.mytable.reloadData()
                }
            }
            catch
            {
                print(error.localizedDescription)
            }
            
        }.resume()
        
    }
    
}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apidata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = TableViewCell()
        cell=tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl_name.text=apidata[indexPath.row].name
        cell.lbl_region.text=apidata[indexPath.row].region
        cell.lbl_capital.text=apidata[indexPath.row].capital
     
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secoundvc = storyboard?.instantiateViewController(identifier: "secoundvc") as! secoundViewController
        secoundvc.c_name = apidata[indexPath.row].name!
        navigationController?.pushViewController(secoundvc, animated: true)
        
    }
}
