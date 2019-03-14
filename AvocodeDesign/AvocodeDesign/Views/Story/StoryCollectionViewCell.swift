//
//  StoryCollectionViewCell.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 11.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit
import Kingfisher

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var liveImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2
        
    }
    
    
    
    
}


