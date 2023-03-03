//
//  SearchPokemonsUseCase.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 02/03/2023.
//

@available(iOS 13.0.0, *)
public protocol SearchPokemonsUseCase {
    func execute() async throws -> [Pokemon]
}

@available(iOS 13.0.0, *)
public final class DefaultSearchPokemonsUseCase: SearchPokemonsUseCase {
    private let pokemonRepository: PokemonRepository
    
    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }
    
    public func execute() async throws -> [Pokemon] {
        return try await pokemonRepository.fetchPokemons()
    }
}
