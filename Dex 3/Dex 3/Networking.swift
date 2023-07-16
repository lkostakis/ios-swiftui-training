//
//  Networking.swift
//  Dex 3
//
//  Created by Lefteris Kostakis on 16/7/23.
//

import Foundation

struct Networking {

    enum NetworkError: Error {
        case badURL, badResponse, badData
    }

    private let baseURL = URL(string: "https://pokeapi.co/api/v2/pokemon/")!

    func fetchAllPokemon() async throws -> [TempPokemon] {
        var allPokemons: [TempPokemon] = []

        var fetchComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        fetchComponents?.queryItems = [URLQueryItem(name: "limit", value: "386")]

        guard let fetchURL = fetchComponents?.url else {
            throw NetworkError.badURL
        }

        let (data, response) = try await URLSession.shared.data(from: fetchURL)

        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.badResponse
        }

        guard let pokeDictionary = try

        return allPokemons
    }

}
