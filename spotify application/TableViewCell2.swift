//
//  TableViewCell2.swift
//  spotify application
//
//  Created by monil sojitra on 18/04/23.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var textView1: UITextView!
    
   
    @IBOutlet weak var fillButton: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
