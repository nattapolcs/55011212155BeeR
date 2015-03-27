//
//  ViewController.swift
//  Workanimation
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var numberOfanimal: UISlider!
    
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        let coloredSquare = UIView()
        
//        // set background color to blue
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        
//        // set frame (position and size) of the square
//        // iOS coordinate system starts at the top left of the screen
//        // CGRect creates a frame with (x,y,width,height) values
//        // so this square will be at top left of screen, 50x50pt
//        // CG in CGRectMake stands for Core Graphics
//        coloredSquare.frame = CGRect(x:0, y:120, width:50, height:50)
//        
//        // finally, add the square to the screen
//        self.view.addSubview(coloredSquare)
//        
//        // lets set the duration to 1.0 seconds
//        // and in the animations block change the background color
//        // to red and the x-position  of the frame
//        /////////////////
//        UIView.animateWithDuration(1.0, animations: {
//            
//            // animate color change and position
//            coloredSquare.backgroundColor = UIColor.redColor()
//            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//            
//            }, completion: { animationFinished in
//                
//                // when complete, remove the square from the parent view
//                coloredSquare.removeFromSuperview()
//                
//        })
        
        ///////////////////////
        // loop for 10 times
//        for loopNumber in 0...10 {
//            
//            // set up some constants for the animation
//            let duration : NSTimeInterval = 1.0
//            let delay : NSTimeInterval = 0.0
//            let options = UIViewAnimationOptions.CurveLinear
//            
//            // set up some constants for the fish
//            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
//            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
//            
//            // create the fish and add it to the screen
//            let fish = UIImageView()
//            fish.image = UIImage(named: "snake.png")
//            fish.frame = CGRectMake(0, yPosition, size, size)
//            self.view.addSubview(fish)
//            
//            // define the animation
//            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
//                
//                // move the fish
//                fish.frame = CGRectMake(320-size, yPosition, size, size)
//                
//                }, completion: { animationFinished in
//                    
//                    // remove the fish
//                    fish.removeFromSuperview()
//                    
//            })
//        }
        //////////////
        // the slider value returns a float (e.g. 10.4)
        // to work in the loop we need to round down as an Int (e.g. 10)
        let numberOfFish = Int(self.numberOfanimal.value)
        
        println("snake = \(numberOfFish)")
        
        
        for loopNumber in 1...numberOfFish {
            
           
            // set up some constants for the animation
            let duration = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // randomly assign a delay of 0.9 to 1s
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            // create the fish
            let fish = UIImageView()
            fish.image = UIImage(named: "snake")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
            })
        }
      
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 //       let coloredSquare = UIView()
  //      coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        self.view.addSubview(coloredSquare)
//        
//        UIView.animateWithDuration(1.0, animations:{
//            coloredSquare.backgroundColor = UIColor.redColor()
//            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//        })
//        ////////////////
//        
//        ////////////////
//        //let coloredSquare = UIView()
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        self.view.addSubview(coloredSquare)
//        //…and switch to using named constants for size and yPosition.
//        
//        // set up some constants for the square
//        let size : CGFloat = 50
//        let yPosition : CGFloat = 120
//        
//        // create the square using these constants
//        // in this example I've also used the Objective-C convention for making the CGRect
//        // but I could have used CGRect(x:0, y:yPosition, width:size, height:size) like we've done previously - they are equivalent
//        //let coloredSquare = UIView()
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRectMake(0, yPosition, size, size)
//        self.view.addSubview(coloredSquare)
//        
//        ///////////
//        UIView.animateWithDuration(1.0, animations: {
//            
//            // animate color change and position
//            coloredSquare.backgroundColor = UIColor.redColor()
//            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//            
//            }, completion: { animationFinished in
//                
//                // when complete, remove the square from the parent view
//                coloredSquare.removeFromSuperview()
//                
//        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

