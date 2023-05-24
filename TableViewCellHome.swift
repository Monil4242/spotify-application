//
//  TableViewCellHome.swift
//  spotify application
//
//  Created by monil sojitra on 26/04/23.
//

import UIKit

class TableViewCellHome: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
  
    
   
    @IBOutlet weak var colletionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return [collectionView.tag].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCellHome
        cell.imgview.image =
    }
    


}
