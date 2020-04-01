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
    
    init(title: String?,
         subtitle: String?,
         coordinate: CLLocationCoordinate2D,
         category: String) {
        
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.category = category
    }
    
    static func requestMockData()-> [LandmarkAnnotation]{
        return [
            // liste des partenaires
            LandmarkAnnotation(title: "Infini'tifs", subtitle: "Horaires du jour: 08h30-19h", coordinate: .init(latitude: 43.31479823115826, longitude: 5.372719701080313), category: "partner"),
            LandmarkAnnotation(title: "Shopi", subtitle: " / Horaires: 08h30-19h", coordinate: .init(latitude: 43.27684799487952, longitude: 5.369887288360586), category: "partner"),
            LandmarkAnnotation(title: "Chez Kader alimentation", subtitle: "Horaires: 08h30-19h", coordinate: .init(latitude: 43.29709106824774, longitude: 5.448679860382071), category: "partner"),
            LandmarkAnnotation(title: "Pressing Europe",
                               subtitle:"Horaires du jour: 08h30-19h",
                               coordinate: .init(latitude: 43.29759081199629, longitude: 5.3731059391784575), category: "partner"),
            LandmarkAnnotation(title: "Au bon pain",
                               subtitle:"Horaires du jour: 08h30-19h",
                               coordinate: .init(latitude: 43.299183717785596, longitude: 5.37628167465209), category: "partner"),
            LandmarkAnnotation(title: "Garage Fiat",
                               subtitle:"Horaires du jour: 08h30-19h",
                               coordinate: .init(latitude: 43.305069, longitude: 5.409393), category: "partner"),
            LandmarkAnnotation(title: "Chez Carole prêt-à-porter",
                               subtitle:"Horaires du jour: 08h30-19h",
                               coordinate: .init(latitude: 43.271581, longitude: 5.418320), category: "partner"),
            
            // Liste des poubelles pleines
            LandmarkAnnotation(title: "Poubelle Marseille 1", subtitle: "Indisponible", coordinate: .init(latitude: 43.310301662548625, longitude: 5.384650166778555), category: "full"),
            LandmarkAnnotation(title: "Poubelle Marseille 2", subtitle: "Indisponible", coordinate: .init(latitude: 43.31482945616598, longitude: 5.391344960479727), category: "full"),
            LandmarkAnnotation(title: "Poubelle Marseille 10",
            subtitle:"Indisponible",
            coordinate: .init(latitude: 43.259081, longitude: 5.390854), category: "full"),
            
            
            // Liste des poubelles disponibles
            LandmarkAnnotation(title: "Poubelle Marseille 11",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.252080, longitude: 5.388794), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 12",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.251580, longitude: 5.417633), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 13",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.317560, longitude: 5.447159), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 14",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.349524, longitude: 5.345535), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 15",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.323055, longitude: 5.364075), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 16",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.283891, longitude: 5.351372), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 17",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.279892, longitude: 5.367165), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 18",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.273393, longitude: 5.429306), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 19",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.259143, longitude: 5.416946), category: "empty"),
            LandmarkAnnotation(title: "Poubelle Marseille 20",
                               subtitle:"Disponible",
                               coordinate: .init(latitude: 43.352083, longitude: 5.465698), category: "empty"),
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
