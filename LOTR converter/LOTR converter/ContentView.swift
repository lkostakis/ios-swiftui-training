//
//  ContentView.swift
//  LOTR converter
//
//  Created by Lefteris Kostakis on 13/7/23.
//

import SwiftUI

struct ContentView: View {

    @State var leftAmount = ""
    @State var rightAmount = ""

    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            VStack {
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                HStack {

                    VStack {
                        HStack {
                            Image("silverpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, -5)

                        TextField("Amount", text: $leftAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                    }

                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundColor(.white)

                    VStack {
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundColor(.white)

                            Image("goldpiece")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)

                        TextField("Amount", text: $rightAmount)
                            .padding(7)
                            .background(Color(UIColor.systemGray6))
                            .cornerRadius(7)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .cornerRadius(50)

                Spacer()

                HStack {
                    Spacer()
                    Button {

                    } label: {
                        Image(systemName: "info.circle.fill")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.trailing)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
