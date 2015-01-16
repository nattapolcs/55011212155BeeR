// Playground - noun: a place where people can play

import UIKit

let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam + editorialTeam

totalTeam += 1
let priceIntInferred = -19
let priceInExplicit:Int = -19

let priceInferred = -19.99
let priceExplicit:Double = 19.99

let priceFloatInferred = -19.99
let priceFloatExplicit:Float = -19.99

let onSaleInferred = true
let OnSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Mlik"]
//var shoppingListExplicit: [String] = ["Eggs" , "Milk"]

var shoppingList = ["Eggs" ,"Mlik"]
println("The shopping list contains \(shoppingList.count) item.")
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolat Spread" , "Cheese" , "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bananas","Apples"]
shoppingList

if (onSaleInferred){
    println("\(nameInferred) on sale for \(priceInferred)!")
}else{
    println("\(nameInferred) at regular price \(priceInferred)!")
}

var number = shoppingList.count
number = 20

println("ddd \(number)")

let possibleTipsInferred = [0.15 , 0.18 ,0.20]
let possibTipsExplicit:[Double] = [0.15 , 0.18 , 0.20]
var numberOfItems = possibleTipsInferred.count

println("\(numberOfItems)")

//loop

var array = ["AAA" , "BBB" , "CCC"]
for (var i=0;i < array.count;i++){
    println(array[i])
}


var array2 = ["a","b","c"]
var str = " "
for str in array2 {
    println(str)
}

var airports: [String: String] = ["TYO": "Tokyo" , "DUB": "Dublin"]
if airports.isEmpty{
    println("The airport dictionnary is empty.")
} else{
    println("The airport dictionary is not empty.")
}

//print "The airport dictionary is not empty."

println("The airports dictionary contains \(airports.count) items.")

airports["LHR"] = "London"
airports["LHR"] = "LONDON Heathrow"

if let oldValue = airports.updateValue("Dublin Internationnal", forKey: "DUB"){
    println("the old value for DUB was \(oldValue).")
}








