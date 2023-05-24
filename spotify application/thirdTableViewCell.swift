//
//  thirdTableViewCell.swift
//  spotify application
//
//  Created by monil sojitra on 16/05/23.
//

import UIKit

class thirdTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 
    @IBOutlet weak var cw: UICollectionView!
    var photo = [UIImage(named: "p1"),UIImage(named: "p2"),UIImage(named: "p3"),UIImage(named: "p4"),UIImage(named: "p5"),UIImage(named: "p6"),UIImage(named: "p7"),UIImage(named: "p8"),UIImage(named: "p9"),UIImage(named: "p10")]
    var name = ["pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon...","pritam,Arijit singh,king,sachet tandon..."]
    override func awakeFromNib() {
        super.awakeFromNib()
        cw.delegate = self
        cw.dataSource = self
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
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "collectioncell2", for: indexPath) as! secondCollectionViewCell
        cell.image.image = photo[indexPath.row]
        cell.lbName.text = name[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    


}
