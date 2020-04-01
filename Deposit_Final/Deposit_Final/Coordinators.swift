//
//  Coordinators.swift
//  Map
//
//  Created by chauveau on 28/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import SwiftUI
import Foundation
import MapKit

/*
  Coordinator for using UIKit inside SwiftUI.
 */
class MapViewCoordinator: NSObject, MKMapViewDelegate {
    
      var mapViewController: MapView
        
      init(_ control: MapView) {
          self.mapViewController = control
      }
        
      func mapView(_ mapView: MKMapView, viewFor
           annotation: MKAnnotation) -> MKAnnotationView?{
         //Custom View for Annotation
          let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
          annotationView.canShowCallout = true
          //Your custom image icon
        guard let landmarkAnnotation = annotation as? LandmarkAnnotation else {
            print("Annotation Issue")
            return nil
        }
        annotationView.image = UIImage(named: landmarkAnnotation.customImage)
          return annotationView
       }
}

struct Coordinators_Previews: PreviewProvider {
    static var previews: some View {
        Text("")
    }
}
