//
//  ViewController.swift
//  Potato
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var potatoNameLabel: UILabel!
    @IBOutlet weak var potatoImageView: UIImageView!
    
    @IBOutlet weak var adjLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    var schedule: Schedule!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schedule = Schedule(name: Name.Elbert, mode: Mode.Potato)
        let name = schedule.potato.name.rawValue
        
        //Sunday
        schedule.addEvent(Event(name: name, day: 14, start: "7:00", end: "10:00", act: Action.Sleep))
        schedule.addEvent(Event(name: name, day: 14, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 14, start: "11:00", end: "12:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 14, start: "12:00", end: "18:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 14, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 14, start: "19:00", end: "21:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 14, start: "21:00", end: "22:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 14, start: "22:00", end: "23:59", act: Action.Study))
        
        //Monday
        schedule.addEvent(Event(name: name, day: 15, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 15, start: "11:00", end: "12:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 15, start: "12:00", end: "18:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 15, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 15, start: "19:00", end: "21:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 15, start: "21:00", end: "22:00", act: Action.Work))
        schedule.addEvent(Event(name: name, day: 15, start: "22:00", end: "23:59", act: Action.Study))
        
        //Tuesday
        schedule.addEvent(Event(name: name, day: 16, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 16, start: "11:00", end: "12:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 16, start: "12:00", end: "18:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 16, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 16, start: "19:00", end: "22:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 16, start: "22:00", end: "23:59", act: Action.Study))
        
        //Wednesday
        schedule.addEvent(Event(name: name, day: 17, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 17, start: "11:00", end: "12:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 17, start: "12:00", end: "18:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 17, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 17, start: "19:00", end: "21:00", act: Action.Work))
        schedule.addEvent(Event(name: name, day: 17, start: "21:00", end: "22:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 17, start: "22:00", end: "23:59", act: Action.Study))
        
        //Thursday
        schedule.addEvent(Event(name: name, day: 18, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 18, start: "11:00", end: "12:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 18, start: "12:00", end: "18:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 18, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 18, start: "19:00", end: "22:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 18, start: "22:00", end: "23:59", act: Action.Study))
        
        //Friday
        schedule.addEvent(Event(name: name, day: 19, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 19, start: "11:00", end: "12:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 19, start: "12:00", end: "18:00", act: Action.Exercise))
        schedule.addEvent(Event(name: name, day: 19, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 19, start: "19:00", end: "21:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 19, start: "21:00", end: "22:00", act: Action.Netflix))
        schedule.addEvent(Event(name: name, day: 19, start: "22:00", end: "23:59", act: Action.Chill))
        
        //Saturday
        schedule.addEvent(Event(name: name, day: 20, start: "10:00", end: "11:00", act: Action.Rise))
        schedule.addEvent(Event(name: name, day: 20, start: "11:00", end: "12:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 20, start: "12:00", end: "18:00", act: Action.Chill))
        schedule.addEvent(Event(name: name, day: 20, start: "18:00", end: "19:00", act: Action.Eat))
        schedule.addEvent(Event(name: name, day: 20, start: "19:00", end: "22:00", act: Action.Socialize))
        schedule.addEvent(Event(name: name, day: 20, start: "22:00", end: "23:59", act: Action.Netflix))
        
        //Calculate which potato to display
        potatoNameLabel.text = schedule.potato.name.rawValue
        let event = schedule.eventATM()
        potatoImageView.image = UIImage(named: "\(schedule.potato.mode)-\(event.act)")
        let captions = event.getCaptions(schedule.potato.name.rawValue, action: event.act)
        adjLabel.text = captions[0]
        suggestionLabel.text = captions[1]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "scheduleSegue"{
            let scheduleTableVC = segue.destinationViewController as! ScheduleTableViewController
            scheduleTableVC.schedule = schedule
        }
        
    }
    
    @IBAction func home(unwindSegue: UIStoryboardSegue){
        
    }
    
}
