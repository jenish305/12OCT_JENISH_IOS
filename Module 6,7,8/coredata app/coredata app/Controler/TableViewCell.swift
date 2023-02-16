//
//  TableViewCell.swift
//  coredata app
//
//  Created by jenish on 15/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl_sub: UILabel!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_fullname: UILabel!
    @IBOutlet weak var lbl_email: UILabel!
    @IBOutlet weak var lbl_city: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
