//
//  ViewController.swift
//  ColourFun
//
//  Created by Tai Nguyen Bui on 17/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit

class ColourListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var selectedColourDetails : (name: String, colour: UIColor)!
    
    let colours : [(name: String, colour: UIColor)] = [
        (name: "Light Blue",    colour: UIColor(red: 165/255, green: 255/255, blue: 237/255, alpha: 1.0)),
        (name: "Green",         colour: UIColor.greenColor()),
        (name: "Red",           colour: UIColor.redColor()),
        (name: "Purple",        colour: UIColor.purpleColor()),
        (name: "Gray",          colour: UIColor.grayColor()),
        (name: "Orange",        colour: UIColor.orangeColor()),
        (name: "Yellow",        colour: UIColor.yellowColor()),
        (name: "Cyan",          colour: UIColor.cyanColor())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = self.colours[indexPath.row].colour
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedColourDetails = self.colours[indexPath.row]
        self.performSegueWithIdentifier("toColourScreen", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toColourScreen" {
            let colourVC = segue.destinationViewController as! ColourViewController
            colourVC.colourDetails = selectedColourDetails
        }
    }
    
}

