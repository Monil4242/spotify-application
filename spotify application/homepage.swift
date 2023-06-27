//
//  homepage.swift
//  spotify application
//
//  Created by monil sojitra on 27/04/23.
//

import UIKit

class homepage: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        
        

       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! firstTableViewCell
            
            return cell

        }
        else if indexPath.row == 1{
            
            let cell2 = tb.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! secondTableViewCell
            
            return cell2
        }
        else if indexPath.row == 2 {
            
            let cell3 = tb.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! thirdTableViewCell
            
            return cell3
        }
        else if indexPath.row == 3
        {
            let cell4 = tb.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! fourTableViewCell
            
            return cell4
        }
        else {
            let cell5 = tb.dequeueReusableCell(withIdentifier: "cell5", for: indexPath) as! fiveTableViewCell
            
            return cell5
        }
      
    }
    
  
  
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 50
        }
        else if indexPath.row == 1{
            return 250
        }
        else if indexPath.row == 2{
            return 250
        }
        else if indexPath.row == 3{
            return 250
        }
        else {
            return 250
        }
    }
    
   
}

