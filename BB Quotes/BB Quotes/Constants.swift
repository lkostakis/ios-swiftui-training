//
//  Constants.swift
//  BB Quotes
//
//  Created by Lefteris Kostakis on 14/7/23.
//

import Foundation

extension String {

    var replaceSpaceWithPlus: String {
        self.replacingOccurrences(of: " ", with: "+")
    }
}
