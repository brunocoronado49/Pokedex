//
//  Pokemon.swift
//  Pokedex
//
//  Created by Bruno Coronado on 11/10/21.
//

import Foundation

struct Pokemon: Identifiable, Decodable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let attack: Int
    let defense: Int
    let description: String
    let weight: Int
    let height: Int
}

let mock_pokemon: [Pokemon] = [
    .init(
        id: 0,
        name: "Bulbasaur",
        imageUrl: "Bulbasaur",
        type: "Poison",
        attack: 49,
        defense: 49,
        description: "desc",
        weight: 69,
        height: 7
    ),
]
