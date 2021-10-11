//
//  PokemonHeader.swift
//  Pokedex
//
//  Created by Bruno Coronado on 11/10/21.
//

import SwiftUI

struct PokemonHeader: View {
    var color: Color
    
    var body: some View {
        ZStack {
            color
        }
    }
}

struct PokemonHeader_Previews: PreviewProvider {
    static var previews: some View {
        PokemonHeader(color: Color.green)
    }
}
