//
//  OneVC.swift
//  InitializingObjectsSample
//
//  Created by Donnie Wang on 1/14/16.
//  Copyright © 2016 Donnie Wang. All rights reserved.
//

import Foundation
import UIKit

class OneVC: UIViewController {
    
    var firstObject: Object!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.firstObject = Object()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDidChange(textField: UITextField) {
        firstObject.someValue = textField.text!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "OneToTwoSegue" {
            let twoVC = segue.destinationViewController as! TwoVC
            twoVC.firstObject = firstObject
        }
    }
}