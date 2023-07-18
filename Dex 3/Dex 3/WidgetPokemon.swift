//
//  WidgetPokemon.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 18/7/23.
//

import SwiftUI

enum WidgetSize {
    case small, medium, large
}

struct WidgetPokemon: View {

    @EnvironmentObject var pokemon: Pokemon
    let widgetSize: WidgetSize

    var body: some View {
        ZStack {
            Color(pokemon.types![0].capitalized)

            switch widgetSize {
            case .small:
                Networking_Image(url: pokemon.sprite)
            case .medium:
                HStack {
                    Networking_Image(url: pokemon.sprite)

                    VStack(alignment: .leading) {
                        Text(pokemon.name!.capitalized)
                            .font(.title)

                        Text(pokemon.types!.joined(separator: ", ".capitalized))
                    }
                    .padding(.trailing, 30)
                }
            case .large:
                Networking_Image(url: pokemon.sprite)

                VStack {
                    HStack {
                        Text(pokemon.name!.capitalized)
                            .font(.largeTitle)
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Text(pokemon.types!.joined(separator: ", ").capitalized)
                            .font(.title2)
                    }
                }
                .padding()
            }
        }
    }
}

struct WidgetPokemon_Previews: PreviewProvider {
    static var previews: some View {
        WidgetPokemon(widgetSize: .large)
            .environmentObject(SamplePokemon.samplePokemon)
    }
}
