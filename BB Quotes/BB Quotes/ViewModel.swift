//
//  ViewModel.swift
//  BB Quotes
//
//  Created by Lefteris Kostakis on 14/7/23.
//

import Foundation

@MainActor
class ViewModel: ObservableObject {

    enum Status {
        case notStarted
        case fetching
        case success(data: (quote: Quote, character: Character))
        case failed(error: Error)
    }
}
