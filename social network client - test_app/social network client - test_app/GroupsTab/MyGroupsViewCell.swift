//
//  MyGroupsViewCell.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 15.01.2021.
//

import UIKit

class MyGroupsViewCell: UITableViewCell {
    
    
    @IBOutlet weak var GroupImage: UIImageView!
    @IBOutlet weak var GroupName: UILabel!
    
    func setData (image: UIImage, name: String){
        GroupImage.image = image
        GroupName.text = name
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
