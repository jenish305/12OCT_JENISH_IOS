//
//  TableViewCell.swift
//  (2) post
//
//  Created by jenish on 10/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var post: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
