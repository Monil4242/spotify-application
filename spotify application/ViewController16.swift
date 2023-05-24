//
//  ViewController16.swift
//  spotify application
//
//  Created by monil sojitra on 26/04/23.
//

import UIKit

class ViewController16: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    let data = spotifyData(productImage: <#T##[String]#>, singerName: [String])
    var photo = [UIImage(named: "daily1"),UIImage(named: "daily2 "),UIImage(named: "daily3"),UIImage(named: "daily4"),UIImage(named: "daily5"),UIImage(named: "daily7")]
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "tablecell", for: indexPath) as! TableViewCellHome
        cell.colletionView.tag = indexPath.section
        cell.colletionView.reloadData()
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return photo.count
    }
   
    

    

    @IBAction func settingButtonAction(_ sender: Any) {
    }
    
    
    @IBAction func recentlyButtonAction(_ sender: Any) {
    }
    
    @IBAction func notificationButtonAction(_ sender: Any) {
    }
}
