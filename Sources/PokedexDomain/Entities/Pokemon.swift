//
//  Pokemon.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 13/12/2022.
//

import Foundation

public struct Pokemon: Codable {
    private let sprites: Sprites
    public let types: [PokeType]
    public let species: NameUrl
    
    public let name: String
    public let identifier: Int
    public let height: Int
    public let weight: Int
    public let abilities: [Ability]
    public let baseExperience: Int?
    public let stats: [Stat]
    
    enum CodingKeys: String, CodingKey {
        case sprites
        case types
        case species
        case name
        case identifier = "id"
        case height
        case weight
        case abilities
        case stats
        case baseExperience = "base_experience"
    }
    
    public init() {
        sprites = Sprites(other: OtherSprite(artwork: ArtworkSprite(imageUrl: "")))
        types = []
        species = NameUrl(name: "", url: "")
        name = ""
        identifier = 0
        height = 0
        weight = 0
        abilities = []
        baseExperience = 0
        stats = []
    }
    
    public var imageUrl: String {
        sprites.other.artwork.imageUrl
    }
    
    public var numberFormatted: String {
        let number = String(format: "%03d", identifier)
        return "#\(number)"
    }
    
    var speciesUrl: String {
        species.url
    }
}

struct Sprites: Codable {
    let other: OtherSprite
}

struct OtherSprite: Codable {
    let artwork: ArtworkSprite
    
    enum CodingKeys: String, CodingKey {
        case artwork = "official-artwork"
    }
}

struct ArtworkSprite: Codable {
    let imageUrl: String
    
    enum CodingKeys: String, CodingKey {
        case imageUrl = "front_default"
    }
}

public struct PokeType: Codable {
    public let type: NameUrl
}

public struct Stat: Codable {
    public let baseStat: Int
    public let effort: Int
    public let stat: NameUrl
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort
        case stat
    }
}
