//
//  TableViewController.swift
//  cusTomTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

     var listData = Array<balloon>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      listData = data().getdata()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

     override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as TableViewCell
        cell.customImageView.image = listData[indexPath.row].balloonImage
        cell.customLabel.text = listData[indexPath.row].balloonName
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      
    }
    
}
