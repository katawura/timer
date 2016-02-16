//
//  ViewController.swift
//  Timer
//
//  Created by kelvin atawura on 9/26/15.
//  Copyright © 2015 kelvin atawura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    
    @IBOutlet var question: UILabel!
    
    var arrayOfStrings: [String] = ["We are what we say we are", "who is the first president of the United states", "Swift is an awesome language"]
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer(){
        time++
        
        timerLabel.text = "\(time)"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)

    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
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

