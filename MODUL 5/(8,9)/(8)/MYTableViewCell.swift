//
//  MYTableViewCell.swift
//  (8)
//
//  Created by jenish on 30/01/23.
//

import UIKit

class MYTableViewCell: UITableViewCell {

    @IBOutlet weak var mycollecotion_view: UICollectionView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mycollecotion_view.delegate   = self
        mycollecotion_view.dataSource  = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MYTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productlist[mycollecotion_view.tag].productimage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = mycollecotion_view.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath)
        as! myCollectionViewCell
        cell.myimg.image = UIImage(named: productlist[mycollecotion_view.tag].productimage[indexPath.row])
        cell.lbl_1.text = productlist[mycollecotion_view.tag].productname[indexPath.row]
        cell.lbl_2.text = productlist[mycollecotion_view.tag].productprice[indexPath.row]
        
        return cell
   
        
    }
    
    
    
    
}
