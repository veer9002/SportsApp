//
//  Data.swift
//  Sports
//
//  Created by Syon on 07/12/18.
//  Copyright © 2018 Syon. All rights reserved.
//

import Foundation
import UIKit

class Data {
    
    static func getAllData() -> [SportsData] {
        var dataArr = [SportsData]()
        dataArr = [
            SportsData(image: UIImage(named: "imageCricket")!, title: "Cricket"),
            SportsData(image: UIImage(named: "imageRugby")!, title: "Rugby")
        ]
        return dataArr
    }
}
