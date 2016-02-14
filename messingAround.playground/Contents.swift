//: Playground - noun: a place where people can play

import UIKit

let calendar = NSCalendar.currentCalendar()
let dateComponents = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year, NSCalendarUnit.WeekOfYear, NSCalendarUnit.Hour, NSCalendarUnit.Minute], fromDate: NSDate())

dateComponents
print("day = \(dateComponents.day)", "month = \(dateComponents.month)", "year = \(dateComponents.year)", "week of year = \(dateComponents.weekOfYear)", "hour = \(dateComponents.hour)", "minute = \(dateComponents.minute)", "second = \(dateComponents.second)", "nanosecond = \(dateComponents.nanosecond)" , separator: ", ", terminator: "")


let components = NSDateComponents()
components.day = 5
components.month = 01
components.year = 2016
components.hour = 19
components.minute = 30
let newDate = calendar.dateFromComponents(components)
calendar.dateFr

let day = calendar.component(NSCalendarUnit.Day, fromDate: NSDate())
let myComponents = calendar.components(.Weekday, fromDate: NSDate())
let weekDay = myComponents.weekday