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

enum Action: String {
    case Eat, Rise, Sleep, Study, School, Work, Socialize, Exercise, Chill, Date, Netflix, Default
}

class Event: NSObject {
    var name: String = ""
    var start: NSDate = NSDate()
    var end: NSDate = NSDate()
    var act: Action
    private var captions: [Action: [String]] = [.Study : [" is studying really hard", "...are you?"], .Work : [" is working", "Probably more productive than you right now."], .Chill : [" is just, you know,", "chilling."], .Eat : [" is eating potato chips", "You can maybe eat something healthier"], .Sleep : [" is asleep", "Go to sleep."], .Netflix : [" is watching Netflix and...", ";)" ], .School : [" is a good student", " goes to class"], .Socialize : [" has a great social life", "—he blends in perfectly!"], .Exercise : [" exercises in hopes of being a healthier", ""], .Rise : ["Rise and shine!", "Our potato is up!"], .Default : [" is a poato.", ""]]
    
    init (name: String, day: Int, start: String, end: String, act: Action) {
        self.name = name
        let startTime = start.componentsSeparatedByString(":")
        let endTime = end.componentsSeparatedByString(":")
        self.start = Event.createDate(Int(startTime[0])!, min: Int(startTime[1])!, day: day)
        self.end = Event.createDate(Int(endTime[0])!, min: Int(endTime[1])!, day: day)
        self.act = act
    }
    
    func getCaptions(name: String, action: Action) -> [String]{
        var customized = captions[action]!
        if action != .Rise{
            customized[0] = name + customized[0]
        }
        if action == .School{
            customized[1] = name + customized[1]
        }
        return customized
    }
    
    func getTime(date: NSDate) -> String{
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        let dateStr = dateFormatter.stringFromDate(date)
        
        return dateStr
    }
    
    class private func createDate(hour: Int, min: Int, day: Int, month: Int = 2, year: Int = 2016) -> NSDate{
        let calendar = NSCalendar.currentCalendar()
        let components = NSDateComponents()
        components.day = day
        components.month = month
        components.year = year
        components.hour = hour
        components.minute = min
        
        return calendar.dateFromComponents(components)!
    }
    
}
