// Playground - noun: a place where people can play

import UIKit
import Foundation

//Constant collection
let constantArray = [1,2,3,4]
//constantArray.append(3)          //Error, since it is const

//Reference and Copy
//Dictionary and Array are both value semantics.

//Dictionary
var dic = [1: "Cat", 2: "Dog"]
var dic2 : [Int : String] = [1: "Cat", 2: "Dog"]
println(dic)
println(dic2[1])
dic2[3] = "Mouse"
dic2[2] = nil       //in this way, remove a value from dictionary
println(dic2)
if let value = dic[1] {     //combine reading a value with safe unwrapping
    println("Value is \(value)")}

//Array
var array = [1,2,3,4]  //strongly typed and can only hold a certain type
println(array[2])
array.append(5)
array.extend(6...9)
array.removeAtIndex(4)
println(array)
var array1 : [Int] = [1,2,3,4]
//var array2 : <Int> = [1,2,3,4]

//Optional
var str:String? = "Is it a string?"
println(str!.uppercaseString)
println(str?.uppercaseString)
if str != nil {
    str = str?.uppercaseString;
    println(str)
}
/*
var str2: String?
str2 = str2?.uppercaseString
println(str2)
*/

// null
//var aNullValue : String
//println("\(aNullValue)")

// switch
var direction = "down"switch direction {
case "down", "somewhere": println("Going somewhere!")
case "up": println("Going Up!")
default: println("Going Nowhere")
}

var score = 570switch score {
    case 1..<10:        println("novice")
    case 10..<100:        println("proficient")
    case 100..<1000:
        println("rock-star")
    default:
        println("awesome")
}

    // type inference
    var greeting = "Hello"
    greeting = "Hi"
    greeting += " World"
    greeting.append(Character("!"))
    println(greeting)
    
    // constant
    let greeting2 = ""
    //greeting2 = "cannot change let / const"
    
    greeting = "hello world".capitalizedString
    println(greeting)
    
    greeting = "hello".stringByAppendingString(" World")
    var str1 = greeting
    
    // Int / Double    let million = 1_000_000
    var radius = 4
    let pi = 3.1415926
    var area = Double(radius) * Double(radius) * pi
    
    // overflow
    //var x = Int.max + 1
    
    // bool
    let alwaysTrue = true // cannot use 1 / 0
    
    // Tuple
    // var address = (742, "Evergreen Terrace")
    var address: (Int, String) = (742, "Evergreen Terrace")
    address.0 = 744
    println(address.0)    println(address.1)
    
    // String interpolation    let( house, street) = address
    let str2 = "I live at \(house + 10), \(street.uppercaseString)"
    println(str2)    println("I live at " + String(house) + ", " + street)    println("I live at \(house), \(street)  \\")
    
    // Loop & Judgment
    let many = "I have many apples"
    for i in 1...3
    {
        println("\(i) - \(many)")
    }
    var range = 4...6
    range = Range(start:4, end:6)
    for i in range
    {
            println("\(i) - \(many)")
    }
    for i in "Swift"
    {
        println("\(i)")
    }
    var i = 0
    while i < 2
    {
        println("\(i)")
        i++
        if i == 1
    {
        println(" i == 1 ")
        }
    }

    
    
    
