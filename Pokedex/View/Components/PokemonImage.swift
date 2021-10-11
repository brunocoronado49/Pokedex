//
//  PokemonImage.swift
//  Pokedex
//
//  Created by Bruno Coronado on 11/10/21.
//

import SwiftUI
import Kingfisher

struct PokemonImage: View {
    var pokemonImage: KFImage
    
    var body: some View {
        pokemonImage
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
    }
}

struct PokemonImage_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImage(pokemonImage: KFImage(URL(string: "Bulbasaur")))
    }
}
