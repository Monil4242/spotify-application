//
//  ViewController13.swift
//  spotify application
//
//  Created by monil sojitra on 20/04/23.
//

import UIKit

class ViewController13: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var pop: UIView!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var tb: UITableView!
        
    @IBOutlet weak var textView: UITextView!
    var arr = ["Monil Sojitra","Add another account"]
    var arr2 = ["monusojitra42@gmail.com",""]
    
    var photo = [UIImage(systemName: "m.circle.fill"),UIImage(named: "addacoount")]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        pop.layer.cornerRadius = 10
        

       
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
    
    @IBAction func privacyButtonAction(_ sender: Any) {
    }
    
    @IBAction func termsButtonAction(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! popTableViewCell
        cell.imgView.image = photo[indexPath.row]
        cell.fullNameLabel.text = arr[indexPath.row]
        cell.gmailIdLbel.text = arr2[indexPath.row]
       
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    

}
