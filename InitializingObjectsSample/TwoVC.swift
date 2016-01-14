//
//  TwoVC.swift
//  InitializingObjectsSample
//
//  Created by Donnie Wang on 1/14/16.
//  Copyright © 2016 Donnie Wang. All rights reserved.
//

import Foundation
import UIKit

class TwoVC: UIViewController {
    
    var delegate: writeValueBackDelegate?
    
   
    @IBOutlet weak var inputField: UITextField!
    var firstObject: Object!
    var secondObject: Object!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputField.text = secondObject.someValue
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDidChange(textField: UITextField) {
        secondObject.someValue = textField.text!
        //save the value in the delegate
        delegate?.writeValueBack(secondObject.someValue)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "TwoToThreeSegue" {
            let threeVC = segue.destinationViewController as! ThreeVC
            threeVC.firstObject = firstObject
            threeVC.secondObject = secondObject
        }
    }
}