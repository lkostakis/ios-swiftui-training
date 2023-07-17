//
//  Stats.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 17/7/23.
//

import SwiftUI

struct Stats: View {

    @EnvironmentObject var pokemon: Pokemon

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
            .environmentObject(SamplePokemon.samplePokemon)
    }
}
