//
//  ViewController.swift
//  Lab1
//
//  Created by Katerina on 16.02.17.
//  Copyright © 2017 Katerina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var countNumber = 210

    @IBOutlet weak var labelNumber: UILabel!
    @IBAction func buttonPause(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func buttonPlay(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func buttonReset(_ sender: AnyObject) {
        countNumber = 210
        self.labelNumber.text = String(countNumber)
    }
    
    @IBAction func buttonMinus10(_ sender: AnyObject) {
        countNumber = countNumber - 10
        if countNumber >= 0 {
            self.labelNumber.text = String(countNumber)
        }
//            else {
//            self.labelNumber.text = "0"
//            countNumber = 0
//        }

    }
   
    @IBAction func buttonPlus10(_ sender: AnyObject) {
        countNumber = countNumber + 10
        self.labelNumber.text = String(countNumber)
    }
    
    func processTimer() {
      countNumber = countNumber - 1
        if countNumber >= 0 {
             self.labelNumber.text = String(countNumber)
        } else {
//             self.labelNumber.text = "0"
//             countNumber = 0
             timer.invalidate()
               }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelNumber.text = String(countNumber)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

