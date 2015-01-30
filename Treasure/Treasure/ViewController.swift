//
//  ViewController.swift
//  Treasure
//
//  Created by Yikang Sun on 23/1/15.
//  Copyright (c) 2015 Moviation. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var treasures: [Treasure] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.treasures = [
            HistoryTreasure(what: "Google's first office",
            year: 1999,
            latitude: 37.44451, longitude: -122.163369), HistoryTreasure(what: "Facebook's first office",
            year: 2005,
            latitude: 37.444268, longitude: -122.163271), FactTreasure(what: "Stanford University",
            fact: "Founded in 1885 by Leland Stanford.",
            latitude: 37.427474, longitude: -122.169719), FactTreasure(what: "Moscone West",
            fact: "Host to WWDC since 2003.",
            latitude: 37.783083, longitude: -122.404025), FactTreasure(what: "Computer History Museum",
            fact: "Home to a working Babbage Difference Engine.", latitude: 37.414371, longitude: -122.076817),
            HQTreasure(company: "Apple",
            latitude: 37.331741, longitude: -122.030333),
            HQTreasure(company: "Facebook",latitude: 37.485955, longitude: -122.148555), HQTreasure(company: "Google",
            latitude: 37.422, longitude: -122.084),
        ]
        
        //self.mapView( self, self.mapView.viewForAnnotation(self.treasures) )
        //self.mapView
        //self.mapView.delegate = self
        //self.mapView.addAnnotations(self.treasures)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: MKMapViewDelegate {
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView!
    {
        // 1
        if let treasure = annotation as? Treasure {
            // 2
            var view = mapView.dequeueReusableAnnotationViewWithIdentifier("pin") as MKPinAnnotationView!
            if view == nil {
                // 3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
                view.canShowCallout = true
                view.animatesDrop = false
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton.buttonWithType(.DetailDisclosure) as UIView
            } else {
                // 4
                view.annotation = annotation
            }
            // 5
            return view
        }
        return nil
    }
}