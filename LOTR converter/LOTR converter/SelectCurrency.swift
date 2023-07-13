//
//  SelectCurrency.swift
//  LOTR converter
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import SwiftUI

struct SelectCurrency: View {

    @Environment(\.dismiss) var dismiss
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]

    var body: some View {

        ZStack {

            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)

            VStack {

                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                IconGrid(currency: $leftCurrency)

                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                IconGrid(currency: $rightCurrency)

                 Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
