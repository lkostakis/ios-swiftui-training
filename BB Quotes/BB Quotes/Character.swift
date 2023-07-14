//
//  Character.swift
//  BB Quotes
//
//  Created by Lefteris Kostakis on 14/7/23.
//

import Foundation

struct Character: Decodable {

    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let portrayedBy: String
}
