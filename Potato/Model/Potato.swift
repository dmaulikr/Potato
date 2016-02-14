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

class Potato: NSObject {
    var schedule = [Week:Event]()
    var name: Name
    var mode: Mode
    //    var growth: Growth
    
    enum Name: String {
        case Elbert = "Elbert"
        case Donovan = "Donovan"
        init(n:Name) {
            self = n
        }
    }
    
    enum Mode: String {
        case Bunny = "Bunny"
        case Tomato = "Tomato"
        init(mod:Mode) {
            self = mod
        }
    }
    
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
    
    enum Week: String {
        case Monday = "Monday"
        case Tuesday = "Tuesday"
        case Wednesday = "Wednesday"
        case Thursday = "Thursday"
        case Friday = "Friday"
        case Saturday = "Saturday"
        case Sunday = "Sunday"
        init(week:Week){
            self = week
        }
    }
    
    init(mode: Mode, name:Name) {
        //   for index in 1...24 {
        //     let defaultEvent = Event(time: index, act: .Chill)
        //   self.schedule.append(defaultEvent)
        // }
        self.name = name
        self.mode = mode
        //        self.growth = growth
    }
    
    //Adds an Event to the schedule
    func addEvent(week:Week,event:Event) {
        schedule[week] = event
    }
    
    //Deletes an Event
    //Sets the Event action to .Chill
    func deleteEvent(week:Week,event:Event) {
        schedule[week]!.act = .Chill
        
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

