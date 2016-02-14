//
//  Event.swift
//  Potato
//
//  Events that Potato(s) can carry out.
//  Includes 9 actions essential for a living potato.
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit


class Event: NSObject {
    var start: NSDate = NSDate()
    var end: NSDate = NSDate()
    var act: Action
    init (start: NSDate, end: NSDate, act: Action) {
        self.start = start
        self.end = end
        self.act = act
    }
    enum Action: String {
        case Eat,Rise,Sleep,Study,School,Work,Socialize,Exercise,Chill,Date,NetflixChill
    }
    
    
}
