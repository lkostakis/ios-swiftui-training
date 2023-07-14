//
//  Dex_3App.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 14/7/23.
//

import SwiftUI

@main
struct Dex_3App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
