//
//  CustomNavBar.swift
//  Employative
//
//  Created by Ashish Singh on 22/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class CustomNavBar: UIView {

   
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    override init(frame: CGRect) {
        super.init(frame : frame)
        
        self.configureNavBar()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
        self.configureNavBar()
    }
    
    func configureNavBar()
    {
        let bundle = Bundle(for: (type(of: self)) )
        let nib = UINib(nibName: "CustomNavBar" , bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        {
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth , .flexibleHeight]
            self.addSubview(view)
            self.backButton.roundCorner(cornerRadiuss: self.backButton.frame.height/2, maskRadiuss: [.layerMinXMinYCorner , .layerMinXMaxYCorner])
            
            self.searchButton.roundCorner(cornerRadiuss: self.searchButton.frame.height/2, maskRadiuss : [.layerMaxXMaxYCorner , .layerMaxXMinYCorner])
            
            self.titleLabel.roundCorner(cornerRadiuss: self.titleLabel.frame.height/2, maskRadiuss: [.layerMaxXMaxYCorner , .layerMaxXMinYCorner,  .layerMinXMaxYCorner, .layerMinXMinYCorner])
        }
    }
}

extension UIView
{
    func roundCorner(cornerRadiuss : CGFloat , maskRadiuss : CACornerMask)
    {
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadiuss
        self.layer.maskedCorners = maskRadiuss
    }

}
