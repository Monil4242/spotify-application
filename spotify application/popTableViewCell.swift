//
//  popTableViewCell.swift
//  spotify application
//
//  Created by monil sojitra on 20/04/23.
//

import UIKit

class popTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var gmailIdLbel: UILabel!
    
    @IBOutlet weak var addImageView: UIImageView!
    
    @IBOutlet weak var addlb: UILabel!
    
   
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    

  
}
