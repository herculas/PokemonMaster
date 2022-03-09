//
//  PokemonListRoot.swift
//  PokeMaster
//
//  Created by 宋睿 on 9/3/2022.
//

import SwiftUI

struct PokemonListRoot: View {
  var body: some View {
    NavigationView {
      PokemonList()
        .navigationTitle("Pokémons")
    }
  }
}

struct PokemonListRoot_Previews: PreviewProvider {
  static var previews: some View {
    PokemonListRoot()
  }
}
