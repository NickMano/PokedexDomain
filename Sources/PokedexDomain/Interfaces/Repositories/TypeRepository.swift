//
//  TypeRepository.swift
//  
//
//  Created by nicolas.e.manograsso on 10/03/2023.
//

public protocol TypeRepository {
    func getWeaknesses(typeNames: [String]) async throws -> TypeRelation
}
