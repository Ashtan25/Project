//
//  ViewController.swift
//  CoreMapLast
//
//  Created by Ashish Singh on 10/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    let regionMeters: Double = 10000

    @IBOutlet weak var mapKitView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        checkLocationOn()
        
        
        // Do any additional setup after loading the view.
    }
    
    func centerUserLocation(){
        if let location = locationManager.location?.coordinate{
            let region = MKCoordinateRegion(center: location, latitudinalMeters: regionMeters, longitudinalMeters: regionMeters)
            mapKitView.setRegion(region, animated: true)
        }
    }
    
    func checkLocationAuth(){
        switch CLLocationManager.authorizationStatus(){
        case .authorizedWhenInUse:
             print(mapKitView)
          mapKitView.showsUserLocation = true
          centerUserLocation()
          locationManager.stopUpdatingLocation()
            break
        case .denied:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
            
        case .authorizedAlways:
            break
        }
    }
    
    func setupLocationManage(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    
    
    func checkLocationOn(){
        if CLLocationManager.locationServicesEnabled(){
            setupLocationManage()
            checkLocationAuth()
        }
        
        else{
            
        }
    }


}

extension ViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else{ return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionMeters, longitudinalMeters: regionMeters)
        mapKitView.setRegion(region, animated: true)
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuth()
        
    }
    
}

