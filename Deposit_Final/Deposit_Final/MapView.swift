//
//  MapView.swift
//  Map
//
//  Created by chauveau on 27/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    //Model with test data
    let landmarks = LandmarkAnnotation.requestMockData()
    
    func makeCoordinator() -> MapViewCoordinator {
        MapViewCoordinator(self)
    }
    
    /**
     - Description - Replace the body with a make UIView(context:) method that creates and return an empty MKMapView
     */
    func makeUIView(context: Context) -> MKMapView{
         MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context){
         //If you changing the Map Annotation then you have to remove old Annotations
        //mapView.removeAnnotations(mapView.annotations)
        //passing model array here
        
        // View on Marseille
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.300000, longitude: 5.400000)
        let span = MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        view.delegate = context.coordinator
        view.addAnnotations(landmarks)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


/*
struct MapView: UIViewRepresentable {
    
    var locationManager = CLLocationManager()

    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        setupManager()
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        return mapView
    }
    
    // open the map on Marseille
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.300000, longitude: 5.400000)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    
    func checkLocationAuthorization() {
      switch CLLocationManager.authorizationStatus() {
      case .authorizedWhenInUse:
        mapView.showsUserLocation = true
       case .denied: // Show alert telling users how to turn on permissions
       break
      case .notDetermined:
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
      case .restricted: // Show an alert letting them know what’s up
       break
      case .authorizedAlways:
       break
      @unknown default:
        print("Normalement, ça n'arrive jamais.")
        }
    }
    
    func viewDidLoad() {
      viewDidLoad()
      checkLocationServices()
    }
    
    // check if the user has switched on his location service
    func checkLocationServices() {
      if CLLocationManager.locationServicesEnabled() {
       checkLocationAuthorization()
      } else {
        // Show alert letting the user know they have to turn this on.
      }
    }
} */




