//
//  PokemonDetail.swift
//  Pokedex
//
//  Created by Bruno Coronado on 11/10/21.
//

import SwiftUI
import Kingfisher

struct PokemonDetail: View {
    let pokemon: Pokemon
    let pokemonViewModel: PokemonViewModel
    let color: Color
    private let maxValue: Int = 500

    init(pokemon: Pokemon, pokemonViewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.pokemonViewModel = pokemonViewModel
        self.color = Color(pokemonViewModel.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        ScrollView {
            PokemonHeader(color: color)
                .frame(height: 300)
            
            PokemonImage(pokemonImage: KFImage(URL(string: pokemon.imageUrl)))
                .offset(y: -180)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.title)
                    .bold()
                    .padding()
                    .offset(y: -100)
                
                Text("type: \(pokemon.type.capitalized)")
                    .bold()
                    .font(.headline)
                    .padding()
                    .offset(y: -100)
                
                Text("Attack: \(pokemon.attack)")
                    .bold()
                    .font(.headline)
                    .padding()
                    .offset(y: -100)
                
                Text("Defense: \(pokemon.defense)")
                    .bold()
                    .font(.headline)
                    .padding()
                    .offset(y: -100)
                
                Text("Weight: \(pokemon.weight)")
                    .bold()
                    .font(.headline)
                    .padding()
                    .offset(y: -100)
                
                Text("Height: \(pokemon.height)")
                    .bold()
                    .font(.headline)
                    .padding()
                    .offset(y: -100)
                
                Text(pokemon.description)
                    .padding()
                    .font(.subheadline)
                    .offset(y: -100)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

