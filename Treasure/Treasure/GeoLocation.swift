//
//  GeoLocation.swift
//  Treasure
//
//  Created by Yikang Sun on 24/1/15.
//  Copyright (c) 2015 Moviation. All rights reserved.
//

import Foundation
import MapKit

extension GeoLocation {
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake( self.latitude, self.longitude)
    }
    
    var mapPoint: MKMapPoint {
        return MKMapPointForCoordinate(self.coordinate)
    }
}