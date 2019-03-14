//
//  TableViewCell.swift
//  AvocodeDesign
//
//  Created by Furkan Beyhan on 12.03.2019.
//  Copyright © 2019 Furkan Beyhan. All rights reserved.
//

import UIKit
import Kingfisher

class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var mainResponse = [Results]()
    var items = [Items]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.collectionView.register(UINib(nibName: "StoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "StoryCollectionViewCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
extension TableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainResponse.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        
        cell.userNameLabel.text = mainResponse[indexPath.row].name.first
        cell.profileImageView.kf.setImage(with: URL(string: mainResponse[indexPath.row].picture.medium))
        
        if items[indexPath.row].completed == true{
            cell.liveImageView.isHidden = false
        }else{
            cell.liveImageView.isHidden = true
        }
        return cell
    }
    
}
