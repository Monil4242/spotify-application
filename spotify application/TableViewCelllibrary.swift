//
//  TableViewCelllibrary.swift
//  spotify application
//
//  Created by monil sojitra on 07/06/23.
//

import UIKit

class TableViewCelllibrary: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var musicImage: UIImageView!
    
    @IBOutlet weak var musicName: UILabel!
    
    @IBOutlet weak var musicView: UILabel!
    
    override func awakeFromNib() {        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
