//
//  MyGroupsViewController.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 12.01.2021.
//

import UIKit

class MyGroupsViewController: UITableViewController {
    
    @IBOutlet var MyGroupsTableView: UITableView!
    private var data: [(String, UIImage)] = [("Group1", UIImage(named: "photo1")!),
                                      ("Group2", UIImage(named: "photo1")!),
                                      ("Group3kuggugkugkugjyfyjfjffjhfhj", UIImage(named: "photo1")!)]
    override func viewDidLoad() {
        super.viewDidLoad()
        MyGroupsTableView.delegate = self
        MyGroupsTableView.dataSource = self
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyGroupsTableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! MyGroupsViewCell
        cell.setData(image: data[indexPath.row].1, name: data[indexPath.row].0)
        
        return cell
    }
}
