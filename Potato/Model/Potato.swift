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
    case Bunny,Tomato
}


class Potato: NSObject {
    var schedule:Schedule
    var name: Name
    var mode: Mode
    //    var growth: Growth
    
    //    enum Growth: String {
    //        case Baby = "Baby"
    //        case Teen = "Teen"
    //        case Adult = "Adult"
    //        case Sprout = "Sprout"
    //        case Plant = "Plant"
    //        case Tree = "Tree"
    //        init(growth:Growth) {
    //            self = growth
    //        }
    //    }
    
    override init(){
        name = .Elbert
        mode = .Tomato
        schedule=Schedule.init()
    }
    
    init(mode: Mode, name:Name, schedule:Schedule) {
        //   for index in 1...24 {
        //     let defaultEvent = Event(time: index, act: .Chill)
        //   self.schedule.append(defaultEvent)
        // }
        self.name = name
        self.mode = mode
        self.schedule = schedule
        //        self.growth = growth
    }
    
    //Changes the mode of the Potato
    func changeMode(mode:Mode) {
        self.mode = mode
    }
    
    //Changes the name of the Potato
    func changeName(name:Name) {
        self.name = name
    }
    
    //Changes the Growth of the Potato
    //  func changeGrowth(growth: Growth) {
    //    self.growth = growth
    // }
}

