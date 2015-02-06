//
//  ViewController.swift
//  QuizWeek4
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var one: UIButton!
    
    @IBOutlet weak var two: UIButton!
    
    @IBOutlet weak var three: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var lableOne: UILabel!
    
    @IBOutlet weak var lableTwo: UILabel!
    
    @IBOutlet weak var lableThree: UILabel!
    
    var sumOne = 0
    var sumTwo = 0
    var sumThree = 0
    var text = ""
    
    
    @IBAction func actionOne(sender: AnyObject) {

        sumOne = sumOne + 1
        lableOne.text = String(sumOne)
        
    }
    
    @IBAction func actionTwo(sender: AnyObject) {
        //text = String(lableOne.text as NSString)
        //text = (String)lableOne.text
        
        
        sumTwo = sumTwo + 2
        lableTwo.text = String(sumTwo)
    }
    
    @IBAction func actionThree(sender: AnyObject) {
        sumThree = sumThree + 3
        lableThree.text = String(sumThree)    }
    
    @IBAction func actionReset(sender: AnyObject) {
        
        clearData()
    }
    
    func clearData(){
        sumOne = 0
        sumTwo = 0
        sumThree = 0
        lableOne.text="0"
        lableTwo.text="0"
        lableThree.text="0"
    }
    
    
    
    

}

