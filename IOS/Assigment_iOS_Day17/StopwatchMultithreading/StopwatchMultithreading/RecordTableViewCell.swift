//
//  RecordTableViewCell.swift
//  StopwatchMultithreading
//
//  Created by Ashish Singh on 20/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class RecordTableViewCell: UITableViewCell {
    @IBOutlet weak var tabelRecordLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    func setRecordLabel(value: Any){
        tabelRecordLabel.text = " \(value)"
        
        
    }
    
}
