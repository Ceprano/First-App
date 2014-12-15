//
//  ViewController.swift
//  MapKit
//
//  Created by Joe Chang on 23/10/14.
//  Copyright (c) 2014 Joe Chang. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController , MKMapViewDelegate{

    @IBOutlet weak var theMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latitude:CLLocationDegrees = 48.399193
        var longitude:CLLocationDegrees = 9.993341
        
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan    = MKCoordinateSpanMake(latDelta, longDelta)
        
        var churchLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake( latitude, longitude )
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(churchLocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        var theUlmMinsterAnnotation = MKPointAnnotation()
        
        theUlmMinsterAnnotation.coordinate = churchLocation
        
        theUlmMinsterAnnotation.title = "Ulm Minster"
        
        theUlmMinsterAnnotation.subtitle = "A famous church in Germany"
        
        self.theMapView.addAnnotation(theUlmMinsterAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

