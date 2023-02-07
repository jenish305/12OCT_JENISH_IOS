//
//  TableViewCell.swift
//  (1)API in tableviwe
//
//  Created by jenish on 06/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_region: UILabel!
    @IBOutlet weak var lbl_capital: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
