//
//  data.swift
//  cusTomTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getdata() -> Array<balloon>{
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "bb.png"), bName: "bb")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "bb2.png"), bName: "bb2")
        tempArray.append(b2)
        
        
        return tempArray
        
    }
}
