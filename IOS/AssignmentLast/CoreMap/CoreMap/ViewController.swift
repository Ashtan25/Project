//
//  ViewController.swift
//  CoreMap
//
//  Created by Ashish Singh on 10/04/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit
import MapKit

final class CustomAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    init(coordinate: CLLocationCoordinate2D, title: String, subtitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
    
    var region: MKCoordinateRegion {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        return MKCoordinateRegion(center: coordinate, span: span)
    }
}


class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        let firstCoordinate = CLLocationCoordinate2D(latitude: 28.4937, longitude: 77.4085)
        let firstAnnotation = CustomAnnotation(coordinate: firstCoordinate, title: "Home", subtitle: "Sector 168")
        let secondCoordinate = CLLocationCoordinate2D(latitude: 28.5339, longitude: 77.3482)
        let secondAnnotation = CustomAnnotation(coordinate: secondCoordinate, title: "Work Place", subtitle: "Sector 127")
        let thirdCoordinate = CLLocationCoordinate2D(latitude: 28.6280, longitude: 77.3649)
        let thirdAnnotation = CustomAnnotation(coordinate: thirdCoordinate, title: "Random", subtitle: "Sector 60")
        let fourthCoordinate = CLLocationCoordinate2D(latitude: 28.4986, longitude: 77.3999)
        let fourthAnnotation = CustomAnnotation(coordinate: fourthCoordinate, title: "Another Random", subtitle: "Sector 135")
        let fifthCoordinate = CLLocationCoordinate2D(latitude: 28.5851, longitude: 77.3290)
        let fifthAnnotation = CustomAnnotation(coordinate: fifthCoordinate, title: "Some Other Random", subtitle: "Sector 20")
        mapView.addAnnotation(firstAnnotation)
        mapView.addAnnotation(secondAnnotation)
        mapView.addAnnotation(thirdAnnotation)
        mapView.addAnnotation(fourthAnnotation)
        mapView.addAnnotation(fifthAnnotation)
        
        mapView.setRegion(firstAnnotation.region, animated: true)
        
        let circle1 = MKCircle(center: firstCoordinate, radius: 50 as CLLocationDistance)
        self.mapView.addOverlay(circle1)
        
        let circle2 = MKCircle(center: secondCoordinate, radius: 50 as CLLocationDistance)
        self.mapView.addOverlay(circle2)
        
        
       
        
        
        
        let sourcePlaceMark = MKPlacemark(coordinate: firstCoordinate)
        let destinationPlaceMark = MKPlacemark(coordinate: secondCoordinate)
        let directionRequest = MKDirections.Request()
        
        directionRequest.source = MKMapItem(placemark: sourcePlaceMark)
        directionRequest.destination = MKMapItem(placemark: destinationPlaceMark)
        directionRequest.transportType = .automobile
        let direction = MKDirections(request: directionRequest)
        direction.calculate{(response,error ) in
            guard let directionResponse = response else{
                if let error = error {
                    print("we have error in getting direction \(error.localizedDescription)")
                }
                return
            }
            let route = directionResponse.routes[0]
            self.mapView.addOverlay(route.polyline, level: .aboveRoads)
            let rect =  route.polyline.boundingMapRect
            self.mapView.setRegion(MKCoordinateRegion.init(rect), animated: true)
            self.mapView.delegate = self
            // Do any additional setup after loading the view.
        }
        //let sourcePlaceMark
    }
    
    
    
}


extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control == view.rightCalloutAccessoryView {
            if let goToDescription = view.annotation?.title! {
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyBoard.instantiateViewController(withIdentifier: "AnotherViewController")
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let customAnnotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView {
            customAnnotationView.animatesWhenAdded = true
            customAnnotationView.titleVisibility = .adaptive
            customAnnotationView.subtitleVisibility = .adaptive
            customAnnotationView.canShowCallout = true
            customAnnotationView.rightCalloutAccessoryView = UIButton(type: .infoDark)
            return customAnnotationView
        }
        return nil
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKCircle {
            let circle = MKCircleRenderer(overlay: overlay)
            circle.strokeColor = UIColor.blue
            circle.lineWidth = 2.0
            circle.fillColor = UIColor(red: 0, green: 100, blue: 100, alpha: 0.1)
            return circle
        }
        else if overlay is MKPolyline {
        let renderer = MKPolylineRenderer.init(overlay: overlay)
        renderer.strokeColor = UIColor.blue
        renderer.lineWidth = 4.0
        return renderer
    }
        else {
            return MKPolylineRenderer()
        }
    
}
}
