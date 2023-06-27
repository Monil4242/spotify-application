//
//  libraryTableViewCell.swift
//  spotify application
//
//  Created by monil sojitra on 24/05/23.
//

import UIKit

class libraryTableViewCell: UITableViewCell {


    
    @IBOutlet weak var image1: UIImageView!
  
    
    @IBOutlet weak var nameLb: UILabel!
    
    @IBOutlet weak var lb2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
