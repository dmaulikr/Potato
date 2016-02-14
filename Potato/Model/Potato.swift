//
//  Potato.swift
//  Potato
//
//  A lively Potato, with a definite meaning in life.
//  Will help real-life potatoes in their life scheduling
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

enum Name: String {
    case Elbert,Donovan
}

enum Mode: String {
    case Bunny,Tomato, Potato
}

class Potato: NSObject {
    var name: Name
    var mode: Mode
    
    init(name: Name, mode: Mode){
        self.name = name
        self.mode = mode
    }
    
    //Changes the name of the Potato
    func setName(name:Name) {
        self.name = name
    }
}

