//
//  SamplePokemon.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 17/7/23.
//

import Foundation
import CoreData

struct SamplePokemon  {
    static let samplePokemon = {
        let context = PersistenceController.preview.container.viewContext

        let fetchRequest: NSFetchRequest<Pokemon> = Pokemon.fetchRequest()
        fetchRequest.fetchLimit = 1

        let results = try! context.fetch(fetchRequest)
        return results.first!
    }()
}

