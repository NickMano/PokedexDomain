//
//  Type.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 09/02/2023.
//

public struct TypeResponse: Codable {
    public let damageRelations: TypeRelation
    
    enum CodingKeys: String, CodingKey {
        case damageRelations = "damage_relations"
    }
}

public struct TypeRelation: Codable {
    public let doubleDamageFrom: [NameUrl]
    public let noDamageFrom: [NameUrl]
    public let halfDamageFrom: [NameUrl]
    
    public init(doubleDamageFrom: [NameUrl], noDamageFrom: [NameUrl], halfDamageFrom: [NameUrl]) {
        self.doubleDamageFrom = doubleDamageFrom
        self.noDamageFrom = noDamageFrom
        self.halfDamageFrom = halfDamageFrom
    }
    
    enum CodingKeys: String, CodingKey {
        case doubleDamageFrom = "double_damage_from"
        case noDamageFrom = "no_damage_from"
        case halfDamageFrom = "half_damage_from"
    }
}
