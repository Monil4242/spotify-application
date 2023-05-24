//
//  fourTableViewCell.swift
//  spotify application
//
//  Created by monil sojitra on 18/05/23.
//

import UIKit

class fourTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 
    @IBOutlet weak var cw: UICollectionView!
    var photo = [UIImage(named: "a1"),UIImage(named: "a2"),UIImage(named: "a3"),UIImage(named: "a4"),UIImage(named: "a5"),UIImage(named: "a6"),UIImage(named: "a7"),UIImage(named: "a8")]
    var name = ["Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira...","Anirudh Ravichander,A.R.Rahman,Sid Srira..."]
    override func awakeFromNib() {
        super.awakeFromNib()
        cw.dataSource = self
        cw.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "collectioncell3", for: indexPath) as! thirdCollectionViewCell
        cell.imageView.image = photo[indexPath.row]
        cell.lb.text = name[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    


}
