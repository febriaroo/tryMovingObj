//
//  ViewController.swift
//  tryingMovingObject
//
//  Created by Febria Roosita Dwi on 7/30/15.
//  Copyright (c) 2015 Febria Roosita Dwi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var location = CGPoint(x: 0, y: 0)
    
    
    @IBOutlet weak var bawah: UIView!
    
    // When user starting to touch the phone
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            location = touch.locationInView(self.view)
            bawah.center = location
        }
        super.touchesBegan(touches , withEvent:event)
        
    }
     //When user starting to move when they are still touching the screen
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
             location = touch.locationInView(self.view)
            bawah.center = location
        }
        super.touchesBegan(touches , withEvent:event)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        var downSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        leftSwipe.direction = .Up
        downSwipe.direction = .Down
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(downSwipe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func handleSwipes(sender:UISwipeGestureRecognizer) {
        if (sender.direction == .Up) {
            println("Swipe Up")
            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseOut, animations: {
                var basketTopFrame = self.bawah.frame
                basketTopFrame.origin.y -= basketTopFrame.size.height
                
               // var basketBottomFrame = self.basketBottom.frame
                //basketBottomFrame.origin.y += basketBottomFrame.size.height
                
                self.bawah.frame = basketTopFrame
                //self.basketBottom.frame = basketBottomFrame
                }, completion: { finished in
                    println("Basket doors opened!")
            })
        } else if (sender.direction == .Down){
            println("Swipe Down")
            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseOut, animations: {
//                var basketTopFrame = self.bawah.frame
//                basketTopFrame.origin.y -= basketTopFrame.size.height
                
                 var basketBottomFrame = self.bawah.frame
                basketBottomFrame.origin.y += basketBottomFrame.size.height
                
                //self.bawah.frame = basketTopFrame
                self.bawah.frame = basketBottomFrame
                }, completion: { finished in
                    println("Basket doors opened!")
            })
        }
    }

}

