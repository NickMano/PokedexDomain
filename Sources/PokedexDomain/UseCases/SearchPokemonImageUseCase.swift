//
//  SearchPokemonImageUseCase.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 02/03/2023.
//

import Foundation

@available(iOS 13.0.0, *)
public protocol SearchPokemonImageUseCase {
    func execute(urlImage: String) async throws -> Data
}

@available(iOS 13.0.0, *)
public final class DefaultSearchPokemonImageUseCase: SearchPokemonImageUseCase {
    private let pokemonRepository: PokemonRepository
    
    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }
    
    public func execute(urlImage: String) async throws -> Data {
        return try await pokemonRepository.fetchPokemonImage(urlImage)
    }
}
