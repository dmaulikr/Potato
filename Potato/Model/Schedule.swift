//
//  Schedule.swift
//  Potato
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

enum Week: String {
    case Monday, Tuesday, Wednesday ,Thursday, Friday, Saturday, Sunday
}

class Schedule: NSObject {
    var potato: Potato
    var schedule: [Week:[Event]]
    private var dayOfWeek: [Int: Week] = [1 : .Sunday, 2: .Monday, 3: .Tuesday, 4: .Wednesday, 5: .Thursday, 6: .Friday, 7: .Saturday]
    
    init(name: Name = .Elbert, mode: Mode = .Potato){
        self.potato = Potato(name: name, mode: mode)
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
    
    func eventATM(date: NSDate = NSDate()) -> Event{
        let day = dayOfWeek(date)
        for event in schedule[day]!{
            if dateIsInRange(date, startDate: event.start, endDate: event.end){
                return event
            }
        }
        
        let calendar = NSCalendar.currentCalendar()
        let startComp = calendar.components([.Hour, .Minute, .Day , .Month , .Year], fromDate: date)
        let endDate = date.dateByAddingTimeInterval(60*60)
        let endComp = calendar.components([.Hour, .Minute, .Day , .Month , .Year], fromDate: endDate)
        
        return Event(name: potato.name.rawValue, day: startComp.day, start: "\(startComp.hour):\(startComp.minute)", end: "\(endComp.hour):\(endComp.minute)", act: .Default)
    }
    
    func dateIsInRange(date: NSDate, startDate: NSDate, endDate: NSDate) -> Bool{

        if date.compare(startDate) == .OrderedAscending{
            return false
        }
        
        if date.compare(endDate) == .OrderedDescending{
            return false
        }
        
        return true
        
    }
    
    //Adds an Event to the schedule
    func addEvent(event:Event) {
        let week = dayOfWeek(event.start)
        var eventList = schedule[week]!
        
        if eventList.count <= 0{
            eventList.append(event)
        } else{
            var index = eventList.count-1
            for i in 0...eventList.count-1{
                if eventList[i].start.compare(event.start) == NSComparisonResult.OrderedDescending{
                    index = i
                }
            }
//            if index == eventList.count-1 && eventList[index] != nil{
//                eventList.append(<#T##newElement: Event##Event#>)
//            } attempting to fix glitch
            eventList.insert(event, atIndex: index)
        }
        
        schedule[week]! = eventList
    }

    //Deletes an Event
    //Pre-condition: event is in schedule
    func deleteEvent(event:Event) {
        let week = dayOfWeek(event.start)
        var eventList = schedule[week]!
        
        var index = 0
        for i in 0...eventList.count-1{
            if eventList[i] == event{
                index = i
            }
        }
        
        eventList.removeAtIndex(index)
        schedule[week]! = eventList
        
    }
    
    //Helper function
    private func addEndDate(startDate: NSDate, duration: Int) -> NSDate {
        let endDate = NSCalendar.currentCalendar().dateByAddingUnit(.Hour, value: duration, toDate: startDate, options: NSCalendarOptions(rawValue: 0))
        return endDate!
    }
    
    private func dayOfWeek(date: NSDate) -> Week{
        let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
        let myComponents = myCalendar.components(.Weekday, fromDate: date)
        let weekDay = myComponents.weekday
        
        return dayOfWeek[weekDay]!
        
    }


}
