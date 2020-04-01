//
//  Annotations.swift
//  Map
//
//  Created by chauveau on 28/03/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import Foundation
import MapKit

class LandmarkAnnotation: NSObject, MKAnnotation {
    let iconColor : String
    let icon = UIImage(named: "trash.circle.fill")
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    let category: String
    var customImage: String {
        switch category {
        case "empty":
            return "Vert"
        case "full" :
            return "Rouge"
        case "partner" :
            return "Bleu"
        default :
            return "Trash"
        }
    }
    
    init(iconColor: String,
         icon: UIImage!,
         title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D,
         category: String) {
        
        self.iconColor = iconColor
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.category = category
    }
    
    static func requestMockData()-> [LandmarkAnnotation]{
        return [
            LandmarkAnnotation(iconColor: "Red", icon: UIImage(named: "trash.circle.fill"), title: "Poubelle Marseille 6",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.29759081199629, longitude: 5.3731059391784575), category: "full"),
            LandmarkAnnotation(iconColor: "Green", icon: UIImage(named: "trash.circle.fill"), title: "Poubelle Marseille 7",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.299183717785596, longitude: 5.37628167465209), category: "empty"),
            LandmarkAnnotation(iconColor: "Green", icon: UIImage(named: "trash.circle.fill"), title: "Poubelle Marseille 1", subtitle: "Indisponible", coordinate: .init(latitude: 43.310301662548625, longitude: 5.384650166778555), category: "full"),
            LandmarkAnnotation(iconColor: "Shop", icon: UIImage(named: "trash.circle.fill"),title: "Poubelle Marseille 2", subtitle: "Disponible", coordinate: .init(latitude: 43.31479823115826, longitude: 5.372719701080313), category: "partner"),
            LandmarkAnnotation(iconColor: "Green", icon: UIImage(named: "trash.circle.fill"), title: "Poubelle Marseille 3", subtitle: "Indisponible", coordinate: .init(latitude: 43.31482945616598, longitude: 5.391344960479727), category: "empty"),
            LandmarkAnnotation(iconColor: "Shop", icon: UIImage(named: "trash.circle.fill"), title: "Poubelle Marseille 4", subtitle: "Disponible", coordinate: .init(latitude: 43.27684799487952, longitude: 5.369887288360586), category: "empty"),
            LandmarkAnnotation(iconColor: "Green", icon: UIImage(named: "trash.circle.fill"), title: "Poubelle Marseille 5", subtitle: "Disponible", coordinate: .init(latitude: 43.29709106824774, longitude: 5.448679860382071), category: "partner"),
        ]
    }
    
    var tintMarker: UIColor {
        switch category {
        case "empty":
            return .green
        case "full" :
            return .red
        case "partner" :
            return .blue
        default :
            return .black
        }
    }
}
