//
//  ExchangeRate.swift
//  LOTR converter
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import SwiftUI

struct ExchangeRate: View {

    @State var leftImage: String
    @State var rightImage: String
    @State var text: String

    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)

            Text(text)

            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImage: "goldpenny",
                     rightImage: "silverpiece",
                     text: "1 Gold Penny = 4 Silver Pieces")
            .previewLayout(.sizeThatFits)
    }
}
