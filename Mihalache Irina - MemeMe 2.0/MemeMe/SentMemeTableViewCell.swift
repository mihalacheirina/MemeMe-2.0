//
//  SentMemeTableViewCell.swift
//  MemeMe
//
//  Created by Irina on 27/06/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class SentMemeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tableViewCell: UIImageView!
    @IBOutlet weak var tableUILabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
