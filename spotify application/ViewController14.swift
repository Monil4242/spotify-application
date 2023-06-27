//
//  ViewController14.swift
//  spotify application
//
//  Created by monil sojitra on 20/04/23.
//

import UIKit

class ViewController14: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cw: UICollectionView!
    
    @IBOutlet weak var nextOt: UIButton!
    
    var arr = ["Pritam","Mithoon","Shankar-Ehsaan-Loy","Himesh Rashmmiya","Sunidhi Chauhan","Lucky Ali","Arijit Singh","King","Atif Aslam","Vishal-Shekhar","Tanishk Bagchi","Sachin-Jigar","Badshah","MC STAN","Amit Trivedi","Armaan Malik","A.R.Rahman","Darshan Raval","Yo Yo Honey Singh","DIVINE","Sachet Tandon"]
    var photo = [UIImage(named: "Pritam"),UIImage(named: "Mithoon "),UIImage(named: "shankar"),UIImage(named: "himesh"),UIImage(named: "sunidhi"),UIImage(named: "roop"),UIImage(named: "arijit"),UIImage(named: "king"),UIImage(named: "atif"),UIImage(named: "Vishal-Shekhar"),UIImage(named: "tanishk"),UIImage(named: "sachin jigar"),UIImage(named: "badshah"),UIImage(named: "mc stan"),UIImage(named: "amit trivedi"),UIImage(named: "Armaan-Malik-1"),UIImage(named: "a.r.rahman"),UIImage(named: "darshan raval"),UIImage(named: "yo yo"),UIImage(named: "divine"),UIImage(named: "sachet")]
    var selectcell = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        nextOt.layer.cornerRadius = 25
        nextOt.layer.masksToBounds = true
        nextOt.isHidden = true
        navigationItem.hidesBackButton = true
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! spotifyCollectionViewCell
        cell.imageView.image = photo[indexPath.row]
        cell.nameLb.text = arr[indexPath.row]
        cell.imageView.layer.cornerRadius = cell.imageView.frame.height/2
        
        //cell.layer.backgroundColor = UIColor.gray.cgColor
        if selectcell == indexPath.row{
            cell.selectImage.image = UIImage(systemName: "checkmark.circle.fill")
        }
        else {
            cell.selectImage.image = UIImage(systemName: "")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nextOt.isHidden = false
        selectcell = indexPath.row
        cw.reloadData()
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "tabBarcontroller") as! tabBarcontroller
        navigationController?.pushViewController(a, animated: true)
    }

    
    
    
    @IBAction func nextButton(_ sender: Any) {
        navigate()
    }
    
    
    
    
}
