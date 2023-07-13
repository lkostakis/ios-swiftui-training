//
//  MapView.swift
//  Seventeen Again
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @Bindable var place: Place
    @State private var position: MapCameraPosition
    @State private var showImagery = false

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Map(position: $position) {
                Annotation(place.interested ? "Place of Interest" : "Not interested", coordinate: place.location) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(.ultraThickMaterial)
                            .stroke(.secondary, lineWidth: 5)
                        Image(systemName: place.interested ? "face.smiling" : "hand.thumbsdown")
                            .padding(3)
                    }
                    .onTapGesture {
                        place.interested.toggle()
                    }
                }
            }
            .mapStyle(showImagery ? .imagery(elevation: .realistic) : .standard)

            Button {
                showImagery.toggle()
            } label: {
                Image(systemName: showImagery ? "globe.americas.fill" : "globe.americas")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .padding(3)
                    .background(.thinMaterial)
                    .cornerRadius(7)
                    .shadow(radius: 3)
                    .padding()
            }
        }
    }

    init(place: Place) {
        self.place = place
        self._position = State(wrappedValue: .camera(MapCamera(
            centerCoordinate: place.location,
            distance: 1000,
            heading: 250,
            pitch: 80)))
    }
}

#Preview {
    MapView(place: SampleTrip.places[0])
}
