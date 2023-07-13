//
//  ScrollImage.swift
//  Seventeen Again
//
//  Created by Lefteris Kostakis on 12/7/23.
//

import SwiftUI

struct ScrollImage: View {
    let image: ImageResource

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .scrollTransition { content, phase in
                content
                    .scaleEffect(x: phase.isIdentity ? 1 : 0.8,
                                 y: phase.isIdentity ? 1 : 0.8)
                    .opacity(phase.isIdentity ? 1 :0.7)
                    .rotation3D(.degrees(phase.isIdentity ? 0 : 45),
                                axis: (x: 1, y: 0, z: 0))
            }
    }
}

struct ScrollImage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollImage(image: .bellagio)
    }
}
