//
//  PokemonRepository.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 02/03/2023.
//

import Foundation

@available(iOS 13.0.0, *)
public protocol PokemonRepository {
    func fetchPokemons() async throws -> [Pokemon]
    func fetchPokemonImage(_ imageUrl: String) async throws -> Data
    func fetchSpecies(_ identifier: Int) async throws -> PokemonSpecies
    func fetchEggGroup(_ name: String) async throws -> EggGroup
    func getWeaknesses(typeNames: [String]) async throws -> TypeRelation
}