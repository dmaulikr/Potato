//
//  ScheduleTableViewController.swift
//  Potato
//
//  Created by Monica Ong on 2/13/16.
//  Copyright © 2016 Monica Ong. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {
    
    var dayOfWeek: [Week] = [.Monday, .Tuesday, .Wednesday, .Thursday, .Friday, .Saturday, .Sunday]
    var schedule: Schedule?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "SFCartoonistHand", size: 40)!]
        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name: "SFCartoonistHand", size: 27)!], forState: UIControlState.Normal)
        self.navigationItem.hidesBackButton = true
//        let backButton = UIBarButtonItem(title: "< Back", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
//        backButton.setTitleTextAttributes([NSFontAttributeName: UIFont(name: "SFCartoonistHand", size: 40)!], forState: UIControlState.Normal)
//        navigationController?.navigationItem.backBarButtonItem = backButton
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return dayOfWeek.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of row
        return (schedule?.schedule[dayOfWeek[section]]!.count)!

    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dayOfWeek[section].rawValue
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("scheduleCell", forIndexPath: indexPath) as! ScheduleTableViewCell
        let eventList = schedule?.schedule[dayOfWeek[indexPath.section]]!
        let event = eventList![indexPath.row]
        cell.labelEvent.text = event.act.rawValue
        cell.labelTime.text = "\(event.getTime(event.start)) - \(event.getTime(event.end))"
//        cell.imageView?.image = UIImage(named: "\(schedule!.potato.mode)-\(event.act.rawValue)")
//        cell.imageView?.contentMode = .ScaleAspectFit
        
        return cell
    }
    
    @IBAction func cancelEvent(unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func addEvent(unwindSegue: UIStoryboardSegue){
        
    }
    
    override func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
//        view.backgroundColor =
        header.textLabel?.font = UIFont(name: "SFCartoonistHand", size: 50)
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        let tableViewCell = cell as! ScheduleTableViewCell
        let eventList = schedule?.schedule[dayOfWeek[indexPath.section]]!
        let event = eventList![indexPath.row]
        tableViewCell.imageView?.image = UIImage(named: "\(schedule!.potato.mode)-\(event.act.rawValue)")
        tableViewCell.imageView?.contentMode = .ScaleAspectFit
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
