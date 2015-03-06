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
        
        let b1 = balloon(bImage: UIImage(named: "cs.png"), bName: "`วิทยาการคอมพิวเตอร์")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "nmd.png"), bName: "สื่อนฤมิต")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "mc.png"), bName: "นิเทษศาสตร์")
        tempArray.append(b2)
        
        let b4 = balloon(bImage: UIImage(named: "is.png"), bName: "วารสารศาสตร์")
        tempArray.append(b2)
        
        let b5 = balloon(bImage: UIImage(named: "ict.png"), bName: "เทคโนโลยีสารสนเทศ")
        tempArray.append(b2)
        
        let b6 = balloon(bImage: UIImage(named: "gis.png"), bName: "ภูมิศาสตร์สารสนเทศ")
        tempArray.append(b2)
        return tempArray
        
    }
}
