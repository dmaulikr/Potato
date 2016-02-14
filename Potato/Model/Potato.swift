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
    var schedule:Schedule
    var name: Name
    var mode: Mode
    
    init(mode: Mode, name:Name) {
        self.name = name
        self.mode = mode
        self.schedule = Schedule()
    }
    
    //Changes the mode of the Potato
    func setMode(mode:Mode) {
        self.mode = mode
    }
    
    //Changes the name of the Potato
    func setName(name:Name) {
        self.name = name
    }
}

