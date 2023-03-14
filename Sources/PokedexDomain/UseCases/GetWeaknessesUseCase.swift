//
//  GetWeaknessesUseCase.swift
//  
//
//  Created by nicolas.e.manograsso on 03/03/2023.
//


public protocol GetWeaknessesUseCase {
    func execute(typeNames: [String]) async throws -> TypeRelation
}

public final class DefaultGetWeaknessesUseCase: GetWeaknessesUseCase {
    private let typeRepository: TypeRepository
    
    public init(typeRepository: TypeRepository) {
        self.typeRepository = typeRepository
    }
    
    public func execute(typeNames: [String]) async throws -> TypeRelation {
        return try await typeRepository.getWeaknesses(typeNames: typeNames)
    }
}

