//
//  FriendPhotosViewController.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 12.01.2021.
//

import UIKit

class FriendPhotoViewController: UITableViewController {
    
    @IBOutlet var friendPhotoTableView: UITableView!
    var data: UIImage = UIImage(named: "photo1")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendPhotoTableView.delegate = self
        friendPhotoTableView.dataSource = self
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = friendPhotoTableView.dequeueReusableCell(withIdentifier: "FriendPhotoViewCell") as! FriendPhotoViewCell
        
        cell.setData(image: data)
        return cell
    }
}
