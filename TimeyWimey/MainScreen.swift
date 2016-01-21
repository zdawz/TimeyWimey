//
//  MainScreen.swift
//  TimeyWimey
//
//  Created by HOLM, JOEL on 1/19/16.
//  Copyright © 2016 Frands. All rights reserved.
//

import UIKit

class MainScreen: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    //Our tableview
    @IBOutlet weak var eventsTableView: UITableView!
    
    
    
    
    
    
    override func viewDidLoad() {
        //Do stuff
        
        
        
        
        
    }
    
 
    
    
    /* Table Cell Function
    * This returns what will be in each individual table cell.   The row is indicated by indexPath.row.
    * We need to display the name of the event and color of the cell.
    * Each cell is 80 pixels tall
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = eventsTableView.dequeueReusableCellWithIdentifier("prototype1", forIndexPath: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    
    
    
    /* Table Rows
    * This returns the number of rows in our table.
    * We need to return the number of events that we currently have in our event object array
    * (events.count)
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        //return Global.events.count
        return 4
    }
    
    
    
    
    /* Add Event Bar Button
    * This function is called when the user presses the add event button.  It needs to be connected to the UIBarButton on
    * the navigation bar.
    * Make a popup window appear and display the option to create a relay or open event
    * Then segue to the save screen and append a relay or open event object to our event array
    */
    
    var alertTitle1 = "Select an Event"
    var message1 = ""
    let openText = "Open"
    let relayText = "Relay"
    let relay = { (action:UIAlertAction!) -> Void in
        //Create a relay event with 4 runners.  Each runner's default name will be “New Runner”

    }
    let open = { (action:UIAlertAction!) -> Void in
        //Create a relay event with 10 runners.  Each runner's default name will be "New Runner"
    }
    
    @IBAction func addEvent(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: alertTitle1, message: message1, preferredStyle: UIAlertControllerStyle.Alert)
        let openButton = UIAlertAction(title: openText, style: UIAlertActionStyle.Default, handler: open)
        alert.addAction(openButton)
        let relayButton = UIAlertAction(title: relayText, style: UIAlertActionStyle.Default, handler: relay)
        alert.addAction(relayButton)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
   
    
    /* Export Bar Button
    * Export all the files
    * Take a for loop through all the events
    * Pull out each Runner and organize their times and names into a single string
    * add up all the Runner’s strings into one single string and export to google docs
    */
    @IBAction func export(sender: UIBarButtonItem) {
        
        
        
    }
    
    
    
    /* Delete All Bar Button
    * Remove all events from the event object
    * Have a popup window that asks the user if they are sure they want to delete all events
    */
    
    let alertTitle2 = "Are you sure you want to delete all events?"
    let message2 = "You won't be able to get them back!"
    let okText = "OK"
    let cancelText = "Cancel"
    
    let reset = { (action:UIAlertAction!) -> Void in
        //global.events = []
        //global.events.reloadData()
    }
    
    @IBAction func deleteAll(sender: UIBarButtonItem) {
        let alert = UIAlertController(title: alertTitle2, message: message2, preferredStyle: UIAlertControllerStyle.Alert)
        let cancelButton = UIAlertAction(title: cancelText, style: UIAlertActionStyle.Cancel, handler: nil) //cancels
        alert.addAction(cancelButton)
        let okButton = UIAlertAction(title: okText, style: UIAlertActionStyle.Destructive, handler: reset) //calls
        alert.addAction(okButton)
        
        presentViewController(alert, animated: true, completion: nil)
    }

    
    
    /* Editable table
    * Makes table editable, return true
    */
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    
    
    
    
    /* Swipe to delete
    * Create an editing style that allows the user to swipe and delete an event
    * Make a popup window appear and ask the user if they are sure they want to delete an event
    */
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
        //    laps.removeAtIndex(indexPath.row)
        //    eventsTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }

    
    
    

}