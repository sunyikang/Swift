// Playground - noun: a place where people can play

import UIKit



let names = ["An", "Ann", "Alex"]

let filtered = names.filter() {
    $0.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 3
}

func isShortName(name: String) -> Bool {
    return name.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 4
}
println(filtered)

func nameWithMaxLength(max: Int) -> (String) -> (Bool) 