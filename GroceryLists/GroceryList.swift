//
//  GroceryList.swift
//  GroceryLists
//
//  Created by Donovan Cotter on 10/14/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation


class Lists {
    var lists = [GroceryList]()
}

class GroceryList {
    var name: String
    var items = [GroceryItem]()
    
    init(name: String) {
    self.name = name
    
    }
}

class GroceryItem {
    var name: String
    
    init(name:String) {
        self.name = name
    }
}


//var pizza = GroceryItem(name: "pizza")
//var peppers = GroceryItem(name: "pepper")
//var milk = GroceryItem(name: "milk")
//var pop = GroceryItem(name: "pop")

var allLists = Lists()
var groceryList = GroceryList?()

var fruit = GroceryItem(name: "Fruit")
var wine = GroceryItem(name: "wine")


var listOne = GroceryList(name: "List One")
var listTwo = GroceryList(name: "List Two")
var listThree = GroceryList(name: "List Three")





