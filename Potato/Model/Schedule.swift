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
    private var schedule: [Week:[Event]]
    private var dayOfWeek: [Int: Week] = [1 : .Sunday, 2: .Monday, 3: .Tuesday, 4: .Wednesday, 5: .Thursday, 6: .Friday, 7: .Saturday]
    
    override init(){
        schedule = [Week:[Event]]()
        
        //Add empty list to every day of week
        schedule[.Sunday] = [Event]()
        schedule[.Monday] = [Event]()
        schedule[.Tuesday] = [Event]()
        schedule[.Wednesday] = [Event]()
        schedule[.Thursday] = [Event]()
        schedule[.Friday] = [Event]()
        schedule[.Saturday] = [Event]()
    }
    
    private func addEndDate(startDate: NSDate, duration: Int) -> NSDate {
        let endDate = NSCalendar.currentCalendar().dateByAddingUnit(.Hour, value: duration, toDate: startDate, options: NSCalendarOptions(rawValue: 0))
        return endDate!
    }
    
    private func dayOfWeek(date: NSDate) -> Week{
        let calendar = NSCalendar.currentCalendar()
        let myComponents = calendar.components(.Weekday, fromDate: NSDate())
        let weekDayNum = myComponents.weekday
        return dayOfWeek[weekDayNum]!
        
    }
    //Adds an Event to the schedule
    func addEvent(event:Event) {
        let week = dayOfWeek(event.start)
        var eventList = schedule[week]!
        
        if eventList.isEmpty{
            eventList.append(event)
        } else{
            var index = eventList.count-1
            for i in 0...eventList.count-1{
                if eventList[i].start.compare(event.start) == NSComparisonResult.OrderedDescending{
                    index = i
                }
            }
            eventList.insert(event, atIndex: index)
        }

    }

    //Deletes an Event
    //Pre-condition: event is in schedule
    func deleteEvent(week:Week,event:Event) {
        let week = dayOfWeek(event.start)
        var eventList = schedule[week]!
        
        var index = 0
        for i in 0...eventList.count-1{
            if eventList[i] == event{
                index = i
            }
        }
        
        eventList.removeAtIndex(index)
        
    }


}
