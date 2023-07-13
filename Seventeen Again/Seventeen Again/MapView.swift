//
//  MapView.swift
//  Seventeen Again
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let placeOfInterest = CLLocationCoordinate2D(latitude: 36.1129,
                                                        longitude: -115.1765)
}

struct MapView: View {
    @State private var position: MapCameraPosition = .camera(MapCamera(
        centerCoordinate: .placeOfInterest,
        distance: 1000,
        heading: 250,
        pitch: 80))

    var body: some View {
        Map(position: $position) {
            Annotation("Place of Interest", coordinate: .placeOfInterest) {
                ZStack {
                    RoundedRectangle(cornerRadius: 7)
                        .fill(.ultraThickMaterial)
                        .stroke(.secondary, lineWidth: 5)
                    Image(systemName: "face.smiling")
                        .padding(3)
                }
            }
        }
        .mapStyle(.standard)
    }
}

#Preview {
    MapView()
}
