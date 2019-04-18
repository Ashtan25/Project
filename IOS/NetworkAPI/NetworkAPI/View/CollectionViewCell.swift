//
//  CollectionViewCell.swift
//  NetworkAPI
//
//  Created by Ashish Singh on 08/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var animatorView: UIView!
    
    @IBOutlet weak var dataView: UIView!
    
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func getImage(image : UIImage)
    {
        animatorView.isHidden = true
        dataView.isHidden = false
        imageView.image = image
    }
    
    func getAuthorName(authorName : String)
    {
        self.authorName.text = authorName
    }
    
}
