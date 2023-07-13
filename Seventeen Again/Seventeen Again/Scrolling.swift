//
//  Scrolling.swift
//  Seventeen Again
//
//  Created by Lefteris Kostakis on 12/7/23.
//

import SwiftUI

struct Scrolling: View {
    var body: some View {
        ScrollView {
            VStack {
                ScrollImage(image: .bellagio)
                ScrollImage(image: .excalibur)
                ScrollImage(image: .luxor)
                ScrollImage(image: .paris)
                ScrollImage(image: .stratosphere)
                ScrollImage(image: .treasureisland)
           }
            .padding()
        }
    }
}

struct Scrolling_Previews: PreviewProvider {
    static var previews: some View {
        Scrolling()
    }
}
