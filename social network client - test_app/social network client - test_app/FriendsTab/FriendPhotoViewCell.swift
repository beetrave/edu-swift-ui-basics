//
//  FriendPhotoViewCell.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 15.01.2021.
//

import UIKit
class FriendPhotoViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Image: UIImageView!
    
    func setData(image: UIImage){
        Image.image = image
    }
}
