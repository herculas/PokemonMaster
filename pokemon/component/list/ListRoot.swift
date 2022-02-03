//
//  ListRoot.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI

struct ListRoot: View {
  var body: some View {
    NavigationView {
      PokemonList().navigationTitle("Pokémons")
    }
  }
}

struct ListRoot_Previews: PreviewProvider {
  static var previews: some View {
    ListRoot()
  }
}
