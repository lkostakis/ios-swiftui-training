//
//  Place.swift
//  Seventeen Again
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import Foundation
import SwiftData
import MapKit
import SwiftUI

@Model
class Place {

    @Attribute(.unique) var name: String
    var latitude: Double
    var longitude: Double
    var interested: Bool

    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }

    var image: Image {
        Image(name.lowerNoSpace)
    }

    init(name: String, latitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.interested = interested
    }
}

struct SampleTrip {
    static var places: [Place] = [
        Place(name: "Bellagio", latitude: 36.1129, longitude: -115.1765, interested: true),
        Place(name: "Paris", latitude: 36.1125, longitude: -115.1707, interested: true),
        Place(name: "Treasure Island", latitude: 36.1247, longitude: -115.1721, interested: true),
        Place(name: "Stratosphere", latitude: 36.1475, longitude: -115.1566, interested: false),
        Place(name: "Luxor", latitude: 36.0955, longitude: -115.1761, interested: false),
        Place(name: "Excalibur", latitude: 36.0988, longitude: -115.1754, interested: true)
    ]
}

extension String {
    var lowerNoSpace: String {
        self.lowercased().filter { $0 != " " }
    }
}
