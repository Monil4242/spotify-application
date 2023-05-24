//
//  ViewController11.swift
//  spotify application
//
//  Created by monil sojitra on 18/04/23.
//

import UIKit

class ViewController11: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    @IBOutlet weak var termsOt: UIButton!
    
    @IBOutlet weak var tb: UITableView!
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var createOt: UIButton!
    var tw1 = ["I would prefer not to receive marketing messages from Spotify.","Share my registration data with Spotify's content providers for marketing purpose."]
    var selectcell = -1
    var a = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.layer.cornerRadius = 4
        text1.layer.masksToBounds = true
        createOt.layer.cornerRadius = 25
        createOt.layer.masksToBounds = true
       
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tw1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell2
        cell.textView1.text = tw1[indexPath.row]
        
        if selectcell == tw1.count{
            cell.fillButton.image = UIImage(systemName: "checkmark.circle.fill")
        }
        else if selectcell == indexPath.row {
            cell.fillButton.image = UIImage(systemName: "circle")
        }
        else {
            cell.fillButton.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if a == 1 {
            selectcell = tw1.count
            a = 0
        }
        else {
            selectcell = indexPath.row
            a = 1
        }
        tb.reloadData()
        
    }
    func navigate(){
        let a = storyboard?.instantiateViewController(withIdentifier: "ViewController12") as! ViewController12
        navigationController?.pushViewController(a, animated: true)
    }
    

    
    @IBAction func termsOfUse(_ sender: Any) {
    }
    
    @IBAction func privacyButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func createAccountButtonAction(_ sender: UIButton) {
        navigate()
    }
}
