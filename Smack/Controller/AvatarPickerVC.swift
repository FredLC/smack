//
//  AvatarPickerVC.swift
//  Smack
//
//  Created by Fred Lefevre on 2018-12-02.
//  Copyright © 2018 Fred Lefevre. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            return cell
        }
        return AvatarCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    @IBAction func segmentControlChanged(_ sender: Any) {
    }
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
