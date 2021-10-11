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
}

let mock_pokemon: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "Bulbasaur", type: "Poison"),
    .init(id: 1, name: "Ivysaur", imageUrl: "Bulbasaur", type: "Poison"),
    .init(id: 2, name: "Venusaur", imageUrl: "Bulbasaur", type: "Poison"),
]
