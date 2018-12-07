//
//  SportsViewController.swift
//  Sports
//
//  Created by Syon on 07/12/18.
//  Copyright © 2018 Syon. All rights reserved.
//

import UIKit

class SportsViewController: UIViewController {

    // Properties
    @IBOutlet weak var collectionView: UICollectionView!
    var dataArr = [SportsData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArr = Data.getAllData()
    }
}

extension SportsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return dataArray.count
        return dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! SportsCollectionViewCell
        
        let sports = dataArr[indexPath.row]
        cell.sportsCell = sports

        return cell
    }
}

extension SportsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        let collectionHeight = collectionView.bounds.height
        return CGSize(width: collectionWidth - 2, height: collectionHeight/2 - 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
