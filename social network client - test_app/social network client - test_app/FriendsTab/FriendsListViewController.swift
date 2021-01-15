//
//  FriendsListViewController.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 12.01.2021.
//

import UIKit

class FriendsListViewController: UITableViewController {
    
    @IBOutlet var FriendsListTableView: UITableView!
    
    
    private var chatData: [(String, String, UIImage)] = [("Stefan","Friend 1", UIImage(systemName: "pencil.circle")!),
        ("Mike","Friend 2", UIImage(systemName: "pencil.circle")!),
        ("Alena","Friend 3 huigiugiugiygyigygyug", UIImage(systemName: "pencil.circle")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FriendsListTableView.delegate = self
        FriendsListTableView.dataSource = self
    }

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FriendsListTableView.dequeueReusableCell(withIdentifier: "FriendsListViewCell") as! FriendsListViewCell
        
        cell.setData(name: chatData[indexPath.row].0, info: chatData[indexPath.row].1, image: chatData[indexPath.row].2)
        return cell
    }
}
