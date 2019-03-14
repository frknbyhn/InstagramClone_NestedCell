//
//  InviteFriendsTableViewCell.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 10.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit

class InviteFriendsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkedButton: UIButton!
    
    var items = [Items]()

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func checkedButton(_ sender: Any) {

        if checkedButton.currentImage == #imageLiteral(resourceName: "check"){
            checkedButton.setImage(#imageLiteral(resourceName: "nonCheck"), for: .normal)
        }else{
            checkedButton.setImage(#imageLiteral(resourceName: "check"), for: .normal)
        }
    }
    
}
