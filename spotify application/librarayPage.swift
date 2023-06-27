//
//  librarayPage.swift
//  spotify application
//
//  Created by monil sojitra on 27/04/23.
//

import UIKit

class librarayPage: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    var photo = [UIImage(named: "mc stan"),UIImage(named: "sachet"),UIImage(named: "yo yo"),UIImage(named: "king"),UIImage(named: "badshah"),UIImage(named: "divine")]
    var photos = [UIImage(named: "mc stan"),UIImage(named: "sachet"),UIImage(named: "yo yo"),UIImage(named: "king"),UIImage(named: "badshah"),UIImage(named: "divine")]
    var name = ["MC STAN","Sachet Tandon","Yo Yo Honey Singh","King","Badshah","Divine"]
    var name2 = ["Artist","Artist","Artist","Artist","Artist","Artist"]
    @IBOutlet weak var artistOt: UIButton!
    
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        artistOt.layer.cornerRadius = 25
        artistOt.layer.masksToBounds = true

        
    }
    func navigation(photo:UIImage){
        let navigate  = storyboard?.instantiateViewController(withIdentifier: "ViewControllercellnavigate") as! ViewControllercellnavigate
        navigate.photo = photo
        navigationController?.pushViewController(navigate, animated: true)
    }
    

   
    @IBAction func searchButton(_ sender: Any) {
    }
    
    @IBAction func addButton(_ sender: Any) {
    }
    
    @IBAction func ArtistsButtonAction(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "tbcell", for: indexPath) as! libraryTableViewCell
        cell.image1.layer.cornerRadius = cell.image1.frame.width/2
        cell.image1.image = photo[indexPath.row]
        cell.nameLb.text = name[indexPath.row]
        cell.lb2.text = name2[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(photo: photos[indexPath.row]!)
    }

}
