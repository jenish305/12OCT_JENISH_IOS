//
//  TableViewCell.swift
//  (3)
//
//  Created by jenish on 24/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
