//
//  ViewControllercellnavigate.swift
//  spotify application
//
//  Created by monil sojitra on 01/06/23.
//

import UIKit

class ViewControllercellnavigate: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var FollowingButtonot: UIButton!
    
    @IBOutlet weak var tb: UITableView!
    var photo = UIImage()
    var number = ["1","2","3","4","5"]
    var name = ["Haath Varthi","Ek Din Pyaar","Basti Ka Hasti","Shana Ban","Snake"]
    var views = ["9,005,601","68,005,601","58,005,601","30,005,601","33,005,601"]
    var image = [UIImage(named: "hath varti"),UIImage(named: "ek din"),UIImage(named: "basti ka hasti"),UIImage(named: "shana ban"),UIImage(named: "snake")]
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = photo
        navigationItem.hidesBackButton = false
        FollowingButtonot.layer.cornerRadius = 5
        FollowingButtonot.layer.masksToBounds = true
        FollowingButtonot.layer.borderColor = UIColor.white.cgColor
        FollowingButtonot.layer.borderWidth = 2
     
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "celltb", for: indexPath) as! TableViewCelllibrary
        cell.numberLabel.text = number[indexPath.row]
        cell.musicImage.image = image[indexPath.row]
        cell.musicName.text = name[indexPath.row]
        cell.musicView.text = views[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
        
    }
    

    

 
    @IBAction func playButton(_ sender: Any) {
    }
    
    @IBAction func shuffleButton(_ sender: Any) {
    }
    
    @IBAction func followingButtonAction(_ sender: Any) {
    }
}
