//
//  TableViewCell.swift
//  sqlite database
//
//  Created by jenish on 14/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_fullname: UILabel!
    @IBOutlet weak var lbl_mobailnumber: UILabel!
    @IBOutlet weak var lbl_email: UILabel!
    @IBOutlet weak var lbl_city: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
