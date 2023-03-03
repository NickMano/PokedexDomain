//
//  PokemonSpecies.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 15/12/2022.
//

import Foundation

public struct PokemonSpecies: Codable {
    public let entries: [PokemonEntry]
    public let genera: [Genera]
    public let growthRate: NameUrl
    public let catchRate: Int
    public let baseHappiness: Int?
    public let genderRate: Int
    public let eggGroups: [NameUrl]
    public let eggCycles: Int?
    
    enum CodingKeys: String, CodingKey {
        case entries = "flavor_text_entries"
        case genera
        case growthRate = "growth_rate"
        case catchRate = "capture_rate"
        case baseHappiness = "base_happiness"
        case genderRate = "gender_rate"
        case eggGroups = "egg_groups"
        case eggCycles = "hatch_counter"
    }
    
    public var speciesName: String {
        guard let species = genera.first(where: { $0.language.name == "en" }) else {
            return ""
        }
        
        return species.genus
    }
    
    public var description: String {
        guard let entry = entries.last(where: { $0.language.name == "en" }) else {
            return ""
        }
        
        return entry.description
    }
}

public struct Genera: Codable {
    public let genus: String
    public let language: NameUrl
}

public struct PokemonEntry: Codable {
    public let description: String
    public let language: NameUrl
    public let version: NameUrl
    
    enum CodingKeys: String, CodingKey {
        case description = "flavor_text"
        case language
        case version
    }
}
