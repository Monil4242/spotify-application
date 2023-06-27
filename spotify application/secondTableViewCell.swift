//
//  secondTableViewCell.swift
//  spotify application
//
//  Created by monil sojitra on 12/05/23.
//

import UIKit

class secondTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    var photo = [UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16")]
    var name = ["pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon..."]
    @IBOutlet weak var cw: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        cw.dataSource = self
        cw.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! firstCollectionViewCell
        cell.image.image = photo[indexPath.row]
        cell.lbName.text = name[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    


}
