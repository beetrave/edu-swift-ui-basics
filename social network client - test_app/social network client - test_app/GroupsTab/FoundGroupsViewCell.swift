//
//  FoundGroupsViewCell.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 15.01.2021.
//

import UIKit

class FoundGroupsViewCell: UITableViewCell {

 
    @IBOutlet weak var FoundGroupImage: UIImageView!
    @IBOutlet weak var FoundGroupName: UILabel!
    
    func setData (image: UIImage, name: String){
        FoundGroupImage.image = image
        FoundGroupName.text = name
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
