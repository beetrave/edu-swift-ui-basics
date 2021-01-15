//
//  FoundGroupsViewController.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 15.01.2021.
//

import UIKit

class FoundGroupsViewController: UITableViewController {


    @IBOutlet var FoundGroupsTableView: UITableView!
    
    private var data: [(String, UIImage)] = [("Group1", UIImage(named: "photo1")!),
                                      ("Group2", UIImage(named: "photo1")!),
                                      ("Group3kuggugkugkugjyfyjfjffjhfhj", UIImage(named: "photo1")!)]
    override func viewDidLoad() {
        super.viewDidLoad()
        FoundGroupsTableView.delegate = self
        FoundGroupsTableView.dataSource = self
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoundGroupCell", for: indexPath) as! FoundGroupsViewCell
        cell.setData(image: data[indexPath.row].1, name: data[indexPath.row].0)
        
        return cell
    }
}
