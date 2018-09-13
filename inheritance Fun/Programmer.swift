//
//  Programmer.swift
//  inheritance Fun
//
//  Created by Reid, Jon Carl on 9/13/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import Foundation

class Programmer: Employee{
    var busPass: Bool
    override var description: String{
        return "\(super.description). I'm a programmer and I have a bus pass: \(busPass)"
    }
    
    init(name: String, busPass: Bool ) {
        self.busPass = busPass
        // call the super class init() AFTER
        // you have intialized all properties for this subclass
        super.init(name: name)
        self.salary += 20_000
    }
    override func raise() {
        self.salary *= 1.03
    }
}
