//
//  EggGroup.swift
//  Pokedex
//
//  Created by nicolas.e.manograsso on 20/02/2023.
//

public struct EggGroup: Codable {
    public let names: [Name]
}

public struct Name: Codable {
    public let name: String
    public let language: NameUrl
}
