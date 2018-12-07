//
//  SportsCollectionViewCell.swift
//  Sports
//
//  Created by Syon on 07/12/18.
//  Copyright © 2018 Syon. All rights reserved.
//

import UIKit

class SportsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var bgImg: UIImageView!

    var sportsCell: SportsData! {
        didSet {
            lblTitle.text = sportsCell.title
            bgImg.image = sportsCell.image
        }
    }
    
}

extension UICollectionViewCell {
    static var identifier: String {
        return String(describing: self)
    }
}
