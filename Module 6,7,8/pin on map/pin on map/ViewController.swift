//
//  ViewController.swift
//  pin on map
//
//  Created by jenish on 16/02/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mymap: MKMapView!
    
    
    // 22.29039351243475, 70.77859189748035
    // 22.304100579664365, 70.78859207446467
    // 22.30295906709685, 70.7968958816077
    // 22.296563672177875, 70.78671486864452
    // 22.304717559427242, 70.79153914166054
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 22.290393, longitude: 70.778591)
        annotation.title = "Kotecha Chock"
        annotation.subtitle = "RAJKOT"
        mymap.addAnnotation(annotation)
        
        let anno2 = MKPointAnnotation()
        anno2.coordinate = CLLocationCoordinate2D(latitude:  22.304100, longitude: 70.788592)
        anno2.title = "Athletic Ground"
        mymap.addAnnotation(anno2)
        
        let anno3 = MKPointAnnotation()
        anno3.coordinate = CLLocationCoordinate2D(latitude: 22.302959, longitude: 70.796895)
        anno3.title = "R World INOX"
        mymap.addAnnotation(anno3)
        
        
        let anno4 = MKPointAnnotation()
        anno4.coordinate = CLLocationCoordinate2D(latitude: 22.296563, longitude:70.786714 )
        anno4.title = "Chai sutta bar - csb cafe"
        mymap.addAnnotation(anno4)
        
        
        let anno5 = MKPointAnnotation()
        anno5.coordinate = CLLocationCoordinate2D(latitude:22.304717, longitude:70.791539)
        anno5.title = "Fun World"
        mymap.addAnnotation(anno5)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 50000, longitudinalMeters: 50000)
        mymap.setRegion(region, animated: true)
    }


}

