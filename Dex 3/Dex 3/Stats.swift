//
//  Stats.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 17/7/23.
//

import SwiftUI
import Charts

struct Stats: View {

    @EnvironmentObject var pokemon: Pokemon

    var body: some View {
        Chart(pokemon.stats) { stat in
            BarMark(
                x: .value("Value", stat.value),
                y: .value("Stat", stat.label)
            )
            .annotation(position: .trailing) {
                Text("\(stat.value)")
                    .padding(.top, -5)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
        }
        .frame(height: 200)
        .padding([.leading, .bottom, .trailing])
        .foregroundColor(Color(pokemon.types![0].capitalized))
        .chartXScale(domain: 0...pokemon.highestStat.value + 10)
    }

}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
            .environmentObject(SamplePokemon.samplePokemon)
    }
}
