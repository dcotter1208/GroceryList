//: Playground - noun: a place where people can play

import UIKit

class List {
    var listName: String
var listItems = [GroceryItem]()
    init(listName: String) {
        self.listName = listName
    }
    
}

class GroceryItem {
    var itemName: String
    
    init(itemName: String) {
        self.itemName = itemName
    }
    
}

var myList = List(listName: "List One")

var beans = GroceryItem(itemName: "Beans")
var pizza = GroceryItem(itemName: "Pizza")
var milk = GroceryItem(itemName: "Milk")

var items = [GroceryItem(itemName: "Beans"),GroceryItem(itemName: "Pizza"), GroceryItem(itemName: "Milk")]

for item in items {
    myList.listItems.append(item)
}

myList.listItems.append(beans)
myList.listItems.append(pizza)
myList.listItems.append(milk)

for item in myList.listItems {
    print(item.itemName)

}

for (index, item) in myList.listItems.enumerate() {
    print(index, item.itemName)
}









