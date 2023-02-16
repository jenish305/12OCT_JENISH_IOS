//
//  ViewController.swift
//  (2) post
//
//  Created by jenish on 10/02/23.
//

import UIKit
struct getdataapi:Codable{
    var postId:Int?
    var name:String?
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    var arr = [getdataapi]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:"https://jsonplaceholder.typicode.com/comments?postId=1")
            if let url = url{
                URLSession.shared.dataTask(with: url, completionHandler: { (data,response,error) in
                    print("Nice 🥲")
                        // json parsing
                    guard let data = data,error == nil else{return}
                    do{
                        self.arr = try JSONDecoder().decode([getdataapi].self, from: data)
                        
                        // printing data of api
                        DispatchQueue.main.async {
                            self.tableview.reloadData()
                        }
                    }
                    catch{
                        print("oho shit 💩")
                    }
                }).resume()
                
            }
        }
    }
    

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.name.text = arr[indexPath.row].name ?? "nil"
        if let id = arr[indexPath.row].postId{
            cell.post.text = String(id)
        }else
        {
            cell.post.text = "nil"
        }
        return cell
    }
    
}
                                       
                                       
                                       
                                      
    
                                       


                                       
