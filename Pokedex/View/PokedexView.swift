//
//  PokedexView.swift
//  Pokedex
//
//  Created by Bruno Coronado on 11/10/21.
//

import SwiftUI

struct PokedexView: View {
    @ObservedObject var pokemonViewModel = PokemonViewModel()
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 15) {
                    ForEach(pokemonViewModel.pokemon) { pokemon in
                        NavigationLink(destination: PokemonDetail(pokemon: pokemon, pokemonViewModel: pokemonViewModel)) {
                            PokemonCell(pokemon: pokemon, pokemonViewModel: pokemonViewModel)
                        }
                        
                    }
                }
            }
            .navigationTitle("Pokemon")
        }
        .accentColor(.white)
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
