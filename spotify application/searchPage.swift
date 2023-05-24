//
//  searchPage.swift
//  spotify application
//
//  Created by monil sojitra on 27/04/23.
//

import UIKit

class searchPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var textOt: UITextField!
    
    @IBOutlet weak var cw: UICollectionView!
    var arr = ["Podcasts","Live Events","Made For You","New Releases","Hindi","Punjabi","Tamil","Telugu","Charts","Pop","Indie","Love"]
    var colourhelper : [String : UIColor] = ["red" : UIColor.red,"orange" : UIColor.orange,"purple" : UIColor.purple,"lightgray" : UIColor.lightGray,"green" : UIColor.green,"cyan" : UIColor.cyan,"brown" : UIColor.brown,"pink" : UIColor.systemPink,"blue" : UIColor.blue,"gray" : UIColor.gray]
    var colour = ["red","orange","purple","lightgray","green","cyan","brown","pink","blue","gray","red","cyan"]
    var photo = [UIImage(named: "c1"),UIImage(named: "c2"),UIImage(named: "c3"),UIImage(named: "c4"),UIImage(named: "c1"),UIImage(named: "c6"),UIImage(named: "c7"),UIImage(named: "c8"),UIImage(named: "c9"),UIImage(named: "c10"),UIImage(named: "c11"),UIImage(named: "c12")]
    override func viewDidLoad() {
        super.viewDidLoad()
        textOt.layer.cornerRadius = 7
        navigationItem.hidesBackButton = true
        

      
    }
    

    @IBAction func cameraButtonAction(_ sender: Any) {
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "seachacollection", for: indexPath) as! searchCollectionViewCell
        cell.lb.text = arr[indexPath.row]
        cell.iamgeView.image = photo[indexPath.row]
        cell.layer.backgroundColor = colourhelper[colour[indexPath.row]]?.cgColor
        cell.layer.cornerRadius = 10
        return cell
    }
    

    
}
