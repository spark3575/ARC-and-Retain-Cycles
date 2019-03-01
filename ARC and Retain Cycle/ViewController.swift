//
//  ViewController.swift
//  ARC and Retain Cycle
//
//  Created by Shin Park on 3/1/19.
//  Copyright © 2019 shindevx.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shin: Person?
    var phone: iPhone?

    override func viewDidLoad() {
        super.viewDidLoad()
        createObjects()
        assignProperties()
    }

    func createObjects() {
        shin = Person(name: "Shin", phone: nil)
        phone = iPhone(name: "iPhoneX", owner: nil)
        
//        shin = nil
//        phone = nil
    }
    
    func assignProperties() {
        shin?.phone = phone
        phone?.owner = shin
        
        shin = nil
//        print(phone?.owner as Any )
        phone = nil
    }
}

