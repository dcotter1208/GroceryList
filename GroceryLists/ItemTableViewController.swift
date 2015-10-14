//
//  ItemTableViewController.swift
//  GroceryLists
//
//  Created by Donovan Cotter on 10/14/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {
    
    var groceryList = GroceryList?()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (groceryList?.items.count)!
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("itemCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = groceryList?.items[indexPath.row].name
        
        return cell
    }



}
