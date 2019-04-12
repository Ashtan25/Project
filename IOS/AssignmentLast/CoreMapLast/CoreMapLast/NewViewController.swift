//
//  NewViewController.swift
//  CoreMapLast
//
//  Created by Ashish Singh on 10/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class NewViewController: UIViewController {
    
    let countryCode = Locale.current.regionCode
    let locationManager = CLLocationManager()
    let regionMeters: Double = 10000
    
    @IBOutlet weak var mapView: MKMapView!
    

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
                checkLocationOn()
        
    }

    
    func centerUserLocation(){
        if let location = locationManager.location?.coordinate{
            let region = MKCoordinateRegion(center: location, latitudinalMeters: regionMeters, longitudinalMeters: regionMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func checkLocationAuth(){
        switch CLLocationManager.authorizationStatus(){
        case .authorizedWhenInUse:
            
            mapView.showsUserLocation = true
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
    
  
    
    @IBAction func showImage(_ sender: Any) {
      
        checkLocationOn()
       
        if countryCode! == "US"{
            let url = URL(string:
                "http://www.newsonair.com/writereaddata/News_Pictures/NAT/2018/Nov/NPIC-201811142185.jpg")
            
            let task = URLSession.shared.dataTask(with: url!) { data, response, error in
                guard let data = data, error == nil else { return }
                DispatchQueue.main.async() {
                    let imageN = UIImage(data: data)
                    self.imageView.image = imageN
                }
                
            }
            
            task.resume()
            
            
        
            
            
            
        }

    
    }
    
   
}

extension NewViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else{ return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionMeters, longitudinalMeters: regionMeters)
        mapView.setRegion(region, animated: true)
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuth()
        
    }
    
}

