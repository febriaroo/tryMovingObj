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
    // When user starting to move when they are still touching the screen
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
             location = touch.locationInView(self.view)
            bawah.center = location
        }
        super.touchesBegan(touches , withEvent:event)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

