//
//  ViewController12.swift
//  spotify application
//
//  Created by monil sojitra on 18/04/23.
//

import UIKit

class ViewController12: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cw: UICollectionView!
    
    @IBOutlet weak var nextOt: UIButton!
    var arr = ["Hindi","International","Punjabi","Tamil","Telugu","Malayalam","Mararthi","Gujarati","Bengali","Kannada"]
    
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10")]
    var colourhelper : [String : UIColor] = ["red" : UIColor.red,"orange" : UIColor.orange,"purple" : UIColor.purple,"lightgray" : UIColor.lightGray,"green" : UIColor.green,"cyan" : UIColor.cyan,"brown" : UIColor.brown,"pink" : UIColor.systemPink,"blue" : UIColor.blue,"gray" : UIColor.gray]
    var colour = ["red","orange","purple","lightgray","green","cyan","brown","pink","blue","gray"]
    var selectcell = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        nextOt.layer.cornerRadius = 25
        nextOt.layer.masksToBounds = true
        nextOt.isHidden = true
        navigationItem.hidesBackButton = true

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cw.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.imageView.image = photo[indexPath.row]
        cell.lb.text = arr[indexPath.row]
        cell.layer.backgroundColor = colourhelper[colour[indexPath.row]]?.cgColor
        
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        if selectcell == indexPath.row{
            cell.fillButton.image = UIImage(systemName: "checkmark.circle.fill")
        }
        else {
            cell.fillButton.image = UIImage(systemName: "")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nextOt.isHidden = false
        selectcell = indexPath.row
        cw.reloadData()
       
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController14") as! ViewController14
        navigationController?.pushViewController(a, animated: true)
    }
    
    
    @IBAction func nextButtonAction(_ sender: Any) {
        navigate()
    }
    

   

}
