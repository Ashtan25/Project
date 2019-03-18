//
//  TableViewCell.swift
//  Question1
//
//  Created by Ashish Singh on 18/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var cellNameLabel: UILabel!
    
    @IBOutlet weak var ageNameLabel: UILabel!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var addressNameLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        cellImageView.layer.borderWidth=1.0
        cellImageView.layer.masksToBounds = false
        cellImageView.layer.cornerRadius = cellImageView.frame.width/2
        cellImageView.clipsToBounds = true

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
