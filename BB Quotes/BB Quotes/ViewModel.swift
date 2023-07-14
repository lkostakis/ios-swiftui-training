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

    @Published private(set) var status: Status = .notStarted

    private let httpClient: NetworkClient

    init(httpClient: NetworkClient) {
        self.httpClient = httpClient
    }

    func getData(for show: String) async {
        status = .fetching

        do {
            let quote = try await httpClient.fetchQuote(from: show)
            let character = try await httpClient.fetchCharacter(quote.character)
            status = .success(data: (quote, character))
        } catch {
            status = .failed(error: error)
        }
    }
}
