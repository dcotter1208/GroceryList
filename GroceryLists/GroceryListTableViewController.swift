//
//  ViewController.swift
//  GroceryLists
//
//  Created by Donovan Cotter on 10/14/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var selectedIndex = 0
    var listOneItems = [GroceryItem]()
    var listTwoItems = [GroceryItem]()
    var listThreeItems = [GroceryItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOneItems = [GroceryItem(name: "Beans"), GroceryItem(name: "Pizza"), GroceryItem(name: "Corn")]
        listTwoItems = [GroceryItem(name: "Tacos"), GroceryItem(name: "Bread"), GroceryItem(name: "Donuts")]
        listThreeItems = [GroceryItem(name: "Wine"), GroceryItem(name: "Cheese"), GroceryItem(name: "More Wine & Cheese")]
        
        listOne.items = listOneItems
        listTwo.items = listTwoItems
        listThree.items = listThreeItems
        
        allLists.lists.append(listOne)
        allLists.lists.append(listTwo)
        allLists.lists.append(listThree)
        print(listOne.items)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return allLists.lists.count

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("listCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = allLists.lists[indexPath.row].name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedIndex = indexPath.row
        
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showItems" {
        
        let itemVC = segue.destinationViewController as! ItemTableViewController
            
        itemVC.groceryList = allLists.lists[selectedIndex]
            
        }
            
    }
    

}

