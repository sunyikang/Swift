//
//  ViewController.swift
//  Church
//
//  Created by Yikang Sun on 24/1/15.
//  Copyright (c) 2015 Moviation. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,
    MKMapViewDelegate {

    @IBOutlet weak var theMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        var latitude:CLLocationDegrees = 48.399193
        var longitude:CLLocationDegrees = 9.993341
        
        var latDelta:CLLocationDegrees =  0.01
        var longDelta:CLLocationDegrees =  0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        var churchLocation:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        var theUlmAnnotation = MKPointAnnotation()
        theUlmAnnotation.coordinate = churchLocation
        theUlmAnnotation.title = "ULM Master Church"
        theUlmAnnotation.subtitle = "A famous church in Germany"
        theMapView.addAnnotation(theUlmAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

