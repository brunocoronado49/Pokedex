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
                
                Text(pokemon.type.capitalized)
                    .font(.headline)
                    .padding()
                    .offset(y: -100)
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}
