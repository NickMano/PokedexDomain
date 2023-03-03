//
//  GetWeaknessesUseCase.swift
//  
//
//  Created by nicolas.e.manograsso on 03/03/2023.
//


@available(iOS 13.0.0, *)
public protocol GetWeaknessesUseCase {
    func execute(typeNames: [String]) async throws -> TypeRelation
}

@available(iOS 13.0.0, *)
public final class DefaultGetWeaknessesUseCase: GetWeaknessesUseCase {
    private let pokemonRepository: PokemonRepository
    
    public init(pokemonRepository: PokemonRepository) {
        self.pokemonRepository = pokemonRepository
    }
    
    public func execute(typeNames: [String]) async throws -> TypeRelation {
        return try await pokemonRepository.getWeaknesses(typeNames: typeNames)
    }
}

