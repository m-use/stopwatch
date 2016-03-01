//
//  ViewController.swift
//  Stopwatch
//
//  Created by Lindsey Baker on 2/29/16.
//  Copyright © 2016 Lindsey Baker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func increaseTimer() {
        
        time++
        
        timerLabel.text = String(time)
        
    }
    
    @IBAction func playButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "increaseTimer", userInfo: nil, repeats: true)
        
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        
        
        
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
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

