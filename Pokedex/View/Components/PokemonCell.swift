//
//  PokemonCell.swift
//  Pokedex
//
//  Created by Bruno Coronado on 11/10/21.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    let pokemon: Pokemon
    let pokemonViewModel: PokemonViewModel
    let color: Color
    
    init(pokemon: Pokemon, pokemonViewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.pokemonViewModel = pokemonViewModel
        self.color = Color(pokemonViewModel.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type.capitalized)
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.35))
                        )
                        .frame(width: 100, height: 68)
                        
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(color)
        .cornerRadius(12)
        .shadow(color: color, radius: 12)
    }
}
