//
//  NetworkClient.swift
//  BB Quotes
//
//  Created by Lefteris Kostakis on 14/7/23.
//

import Foundation

struct NetworkClient {

    enum NetworkError: Error {
        case badURL, badResponse
    }

    private let baseURL = "https://breaking-bad-api-six.vercel.app/api"

    func fetchQuote(from show: String) async throws -> Quote {

        guard let baseURL = URL(string: baseURL) else {
            throw NetworkError.badURL
        }

        let quoteURL = baseURL.appending(path: "quotes/random")
        var quoteComponents = URLComponents(url: quoteURL, resolvingAgainstBaseURL: true)
        let quoteQueryItem = URLQueryItem(name: "production", value: show.replaceSpaceWithPlus)
        quoteComponents?.queryItems = [quoteQueryItem]

        guard let fetchURL = quoteComponents?.url else {
            throw NetworkError.badURL
        }

        let (data, response) = try await URLSession.shared.data(from: fetchURL)

        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            throw NetworkError.badResponse
        }

        let quote = try JSONDecoder().decode(Quote.self, from: data)

        return quote
    }

    func fetchCharacter(_ name: String) async throws -> Character {

        guard let baseURL = URL(string: baseURL) else {
            throw NetworkError.badURL
        }

        let characterURL = baseURL.appending(path: "characters")
        var characterComponents = URLComponents(url: characterURL, resolvingAgainstBaseURL: true)
        let characterQueryItem = URLQueryItem(name: "name", value: name.replaceSpaceWithPlus)
        characterComponents?.queryItems = [characterQueryItem]

        guard let fetchURL = characterComponents?.url else {
            throw NetworkError.badURL
        }

        let (data, response) = try await URLSession.shared.data(from: fetchURL)

        guard let response = response as? HTTPURLResponse,
              response.statusCode == 200 else {
            throw NetworkError.badResponse
        }

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let characters = try decoder.decode([Character].self, from: data)

        return characters[0]
    }
}
