//
//  ViewController.swift
//  Exam1_55011212155
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{

    
    @IBOutlet weak var Subject: UITextField!
    
    @IBOutlet weak var ScoreMaxMidterm: UITextField!
    
    @IBOutlet weak var ScoreMaxFinal: UITextField!
    
    @IBOutlet weak var ScoreMaxWork: UITextField!
    
    @IBOutlet weak var ScoreMidterm: UITextField!
    
    @IBOutlet weak var ScoreFinal: UITextField!
    
    @IBOutlet weak var ScoreWork: UITextField!
    
    @IBOutlet weak var Caculate: UIButton!
    
    @IBOutlet weak var Grade: UILabel!

    @IBOutlet weak var cal: UIButton!
    
    @IBOutlet weak var show: UITableView!
    
    @IBOutlet weak var showScore: UILabel!
    
    var sortedKey:[Double]=[]
    var gread:[String]=[]
    
    @IBAction func calculate(sender: AnyObject) {
        
        var smm = ScoreMaxMidterm.text.toInt()!
        var smf = ScoreMaxFinal.text.toInt()!
        var smw = ScoreMaxWork.text.toInt()!
        var scoremid = Double((ScoreMidterm.text as NSString).doubleValue)
        var scorefinal = Double((ScoreFinal.text as NSString).doubleValue)
        var scorework = Double((ScoreWork.text as NSString).doubleValue)
        
        var sumscore = scoremid+scorefinal+scorework
        var sum1 = smm+smf+smw
        var persen = (a:0.05,b:0.10,c:0.15)
        
        
        var scorefinal5persen = scoremid+scorework+(scorefinal*(persen.a))
        var scorefinal10persen = scoremid+scorework+(scorefinal*(persen.b))
        var scorefinal15persen = scoremid+scorework+(scorefinal*(persen.c))
        
        
        
        
        var per = [scorefinal5persen,scorefinal10persen,scorefinal15persen]
        for loop in per {
            sortedKey.append(loop)
        }
        
        
        
        if(sum1 > 100 || sum1 < 0 || sum1 != 100){
            
            let message = "คะแนนเต็มต้องอยู่ในช้วง 0-100 เท่านั้น  หรือ ไม่ใส่ชื่อ วิชา "
            let alert = UIAlertController(title: "กรอกใหม่", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        else{
            showScore.text = String(format : "%0.2f",sumscore)
            switch sumscore{
                case 0...43.99 : Grade.text = "F"
                case 44...49.99 : Grade.text = "D"
                case 50...55.99 : Grade.text = "D+"
                case 56...61.99 : Grade.text = "C"
                case 62...67.99 : Grade.text = "C+"
                case 68...73.99 : Grade.text = "B"
                case 74...79.99 : Grade.text = "B+"
                case 80...100.00 : Grade.text = "A"
        
            default : "score"
            }
        }
        //sortedKey.append(100)
        show.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKey.count
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        let a = sortedKey[indexPath.row]
        
        cell.textLabel?.text = ""
        cell.detailTextLabel?.text = "score \(a)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        show.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}





