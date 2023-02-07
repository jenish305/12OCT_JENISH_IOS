//
//  secoundViewController.swift
//  (1)API in tableviwe
//
//  Created by jenish on 06/02/23.
//

import UIKit
import WebKit

class secoundViewController: UIViewController {

    @IBOutlet weak var flage_img: WKWebView!
    @IBOutlet weak var lbl_namee: UILabel!
    
    var c_name=""
    var url_image=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_namee.text=c_name
      
    }
    


}
