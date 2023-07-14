//
//  Constants.swift
//  BB Quotes
//
//  Created by Lefteris Kostakis on 14/7/23.
//

import Foundation

enum Constants {
    static let bbName = "Breaking Bad"
    static let bcsName = "Better Call Saul"
}

extension String {

    var replaceSpaceWithPlus: String {
        self.replacingOccurrences(of: " ", with: "+")
    }

    var noSpaces: String {
        self.replacingOccurrences(of: " ", with: "")
    }

    var lowerNoSpaces: String {
        self.noSpaces.lowercased()
    }
}
