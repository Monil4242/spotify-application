//
//  fiveTableViewCell.swift
//  spotify application
//
//  Created by monil sojitra on 18/05/23.
//

import UIKit

class fiveTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 
 
    var photo = [UIImage(named: "b1"),UIImage(named: "b2"),UIImage(named: "b3"),UIImage(named: "b4"),UIImage(named: "b5"),UIImage(named: "b6"),UIImage(named: "b7"),UIImage(named: "b8")]
    var name = ["A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,...","A.R.Rahman,Alka Yagnik,Udit Naraayn,..."]
    @IBOutlet weak var cw: UICollectionView!
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
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "collectioncell4", for: indexPath) as! fourCollectionViewCell
        cell.image.image = photo[indexPath.row]
        cell.lbname.text = name[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    

}
