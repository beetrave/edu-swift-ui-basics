//
//  FriendViewCell.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 12.01.2021.
//

import UIKit

class FriendsListViewCell: UITableViewCell {

    @IBOutlet weak var FriendsListImage: UIImageView!
    @IBOutlet weak var FriendsListName: UILabel!
    @IBOutlet weak var FriendsListLastMassage: UILabel!
    
    func setData(name: String, info: String, image: UIImage){
        FriendsListName.text = name
        FriendsListLastMassage.text = info
        FriendsListImage.image = image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
