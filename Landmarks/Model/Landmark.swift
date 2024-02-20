//
//  Landmark.swift
//  Landmarks
//
//  Created by Xiangwei Li on 2/13/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates // add a coordinates property to the structure
    var locationCoordinate: CLLocationCoordinate2D{ // compute a locationCoordinate property
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }


    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}


