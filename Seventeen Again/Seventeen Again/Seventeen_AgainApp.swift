//
//  Seventeen_AgainApp.swift
//  Seventeen Again
//
//  Created by Lefteris Kostakis on 12/7/23.
//

import SwiftUI

@main
struct Seventeen_AgainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
