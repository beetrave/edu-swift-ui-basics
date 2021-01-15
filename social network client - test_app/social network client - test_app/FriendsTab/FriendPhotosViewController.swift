//
//  FriendPhotosViewController.swift
//  social network client - test_app
//
//  Created by Алексей Кодинцев on 15.01.2021.
//

import UIKit

//private let reuseIdentifier = "FriendPhotoViewCell"

class FriendPhotosViewController: UICollectionViewController {

    @IBOutlet var FriendPhotosCollectionView: UICollectionView!
    private var testImageData: UIImage = UIImage(systemName: "pencil.circle")!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        FriendPhotosCollectionView.delegate = self
        FriendPhotosCollectionView.dataSource = self
    }
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = FriendPhotosCollectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoViewCell", for: indexPath) as! FriendPhotoViewCell
    
        cell.setData(image: testImageData)
        return cell
    }
}
