//
//  Schedule.swift
//  Potato
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

enum Week: String {
    case Monday, Tuesday, Wednesday ,Thursday,Friday, Saturday, Sunday
}

class Schedule: NSObject {
    private var schedule = [Week:Event]()
    
    override init(){
        let defaultSchedule = [Week:Event]()
        let newDate = NSCalendar.currentCalendar().dateByAddingUnit(
            .Hour, // adding hours
            value: 2, // adding two hours
            toDate: NSDate(),
            options: NSCalendarOptions(rawValue: 0)
        )
        let defaultEvent: Event = Event.init(start: NSDate(), end: newDate!, act: .Chill)
        schedule[.Monday] = defaultEvent
        schedule[.Tuesday] = defaultEvent
        schedule[.Wednesday] = defaultEvent
        schedule[.Thursday] = defaultEvent
        schedule[.Friday] = defaultEvent
        schedule[.Saturday] = defaultEvent
        schedule[.Sunday] = defaultEvent
        schedule = defaultSchedule
        
    }
    init(week:Week,event:Event){
        self.schedule[week] = event
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


}
