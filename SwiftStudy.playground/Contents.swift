//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Sravan"

let status = 404
let statusCode:Int? = 400

print("statusCode value is : \(statusCode!)")

var optionalValue: Int?

optionalValue = 30

if (optionalValue != nil) {
    print(optionalValue)
} else {
    print("Optional value is nil")
}


//If let usage..............
let someNumber = "123"

if let tempValue = Int(someNumber) {
    print("temp Value : \(tempValue)")
} else {
    print("temp Value is not available")
}

//////////
//optionals usage
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

if assumedString != nil {
    print(assumedString)
}

if let tmpString: String = assumedString {
    print(tmpString)
}

//////////
//Arrays
var someIntArray = [Int]()
someIntArray.append(1);
someIntArray.append(2)

var anotherArray = [11, 12]
var resultArray = someIntArray + anotherArray //similar to Array by adding elements

//someIntArray = [] //similar to removeAllItems
print(resultArray)

var aStringArray = ["String 4", "String 5"]
var anotherStringArray = ["String 1", "String 2", "String 3"]
var resultStringArray = anotherStringArray + aStringArray

var shoppingList = ["Eggs", "Milk"]
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
shoppingList[0] = "Six eggs"
shoppingList[4...6] = ["Bananas", "Apples"]

print(shoppingList)

////////////////////////////
///Dictionaries

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London"
airports["MAA"] = "Chennai"
airports.updateValue("London Heathrow", forKey: "LHR")
print(airports)

/////////////////////////////
//guard statement

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(["name": "John"]) //greet(person: ["name": "John"])
greet(["name": "Jane", "location": "Cupertino"]) //greet(person: ["name": "Jane", "location": "Cupertino"])

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

//func greet(person: String, alreadyGreeted: Bool) -> String {
//    if alreadyGreeted {
//        return greetAgain(person)
//    } else {
//        return greet(person: person)
//    }
//}
//print(greet("Tim", alreadyGreeted: true))

func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
    print(parameterName)
}

someFunction(argumentLabel: 2)

///////////////////////////////////////////////////////////
//Closures

//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}
//var reversedNames = names.sorted(by: backward)
//
//reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
//    return s1 > s2
//})

//////////////////////////////////////////////////////////
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum CompassDirections: String {
    case north, south, east, west
}

var directionToHead = CompassPoint.west
directionToHead = .east

let direction = CompassDirections.north

////////////////////////////////////////////////////////////
struct Resolution {
    var width = 10
    var height = 20
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 30.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

let vga = Resolution(width: 80, height: 90)
///////////////////////////////////////////////////////

func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
swapTwoInts(3, 5)












