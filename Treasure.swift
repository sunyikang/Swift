//
//  Treasure.swift
//  
//
//  Created by Yikang Sun on 23/1/15.
//
//

import Foundation

struct GeoLocation {
    var latitude: Double
    var longtitude: Double
}

class Treasure {
    let what: String
    let location: GeoLocation
    
    init( what: String, location: GeoLocation) {
        self.what = what
        self.location.latitude = location.latitude
        self.location.longtitude = location.longtitude
    }
    
    convenience init(what: String, latitude: Double, longtitude: Double) {
        let location = GeoLocation(latitude: latitude, longtitude: longtitude)
        init(what: what, location: location)
    }
}

class HistoryTreasure: Treasure {
    let year: Int
    
    init(what: String, year: Int, latitude: Double, longtitude: Double) {
        self.year = year
        let location = GeoLocation(latitude: latitude, longtitude: longtitude)
        super.init(what: what, location: location)
    }
}

class FactTreasure {
    let fact: String
    
    init(what: String, fact: String, latitude: Double, longtitude: Double) {
        self.fact = fact
        let location = GeoLocation(latitude: latitude, longtitude: longtitude)
        super.init(what: what, location: location)
    }
}

class HQTreasure {
    let company: String
    
    init(company: String, latitude: Double, longtitude: Double) {
        self.company = company
        let location = GeoLocation(latitude: latitude, longtitude: longtitude)
        super.init(what: company + " headquaters", location: location)
    }
}