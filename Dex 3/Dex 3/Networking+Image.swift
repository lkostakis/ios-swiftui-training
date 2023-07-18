//
//  Networking+Image.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 18/7/23.
//

import SwiftUI

struct Networking_Image: View {

    let url: URL?

    var body: some View {

        if let url,
           let imageData = try? Data(contentsOf: url),
           let uiImage = UIImage(data: imageData) {

            Image(uiImage: uiImage)
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 6)
        } else {
            Image("bulbasaur")
        }
    }
}

struct Networking_Image_Previews: PreviewProvider {
    static var previews: some View {
        Networking_Image(url: SamplePokemon.samplePokemon.sprite)
    }
}
