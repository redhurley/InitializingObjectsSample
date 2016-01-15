//
//  OneVC.swift
//  InitializingObjectsSample
//
//  Created by Donnie Wang on 1/14/16.
//  Copyright © 2016 Donnie Wang. All rights reserved.
//

import Foundation
import UIKit

class OneVC: UIViewController, writeValueBackDelegate {
    
    var firstObject: Object!
    var secondObject: Object!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.firstObject = Object()
        self.secondObject = Object()
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
            //set OneVC to be a delegate for a TwoVC
            twoVC.delegate = self
            
            twoVC.firstObject = firstObject
            twoVC.secondObject = secondObject
        }
    }
    
    func writeValueBack(value: String) {
        // this is my value from my second View Controller
        print("first:" + value)
        self.secondObject.someValue = value
    }
}