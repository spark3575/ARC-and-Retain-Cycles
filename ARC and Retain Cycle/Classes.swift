//
//  Classes.swift
//  ARC and Retain Cycle
//
//  Created by Shin Park on 3/1/19.
//  Copyright © 2019 shindevx.com. All rights reserved.
//

import Foundation

class Person {
    
    let name: String
    var phone: iPhone?
    
    init(name: String, phone: iPhone?) {
        self.name = name
        self.phone = phone
        print("\(name) has been initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class iPhone {
    let name: String
    weak var owner: Person?
    
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
        print("\(name) has been initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}
