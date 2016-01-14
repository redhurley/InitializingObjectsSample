//
//  ThreeVC.swift
//  InitializingObjectsSample
//
//  Created by Donnie Wang on 1/14/16.
//  Copyright © 2016 Donnie Wang. All rights reserved.
//

import Foundation
import UIKit

class ThreeVC: UIViewController {
    @IBOutlet weak var firstObjectLabel: UILabel!
    @IBOutlet weak var secondObjectLabel: UILabel!
    
    var firstObject: Object!
    var secondObject: Object!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstObjectLabel.text = "firstObject.someValue = \(firstObject.someValue)"
        secondObjectLabel.text = "secondObject.someValue = \(secondObject.someValue)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}