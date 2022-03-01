//
//  PokemonColor.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import SwiftUI

struct PokemonColor: Codable, Identifiable {
  let id: Int?
  let name: PokemonColorName?
  let names: [Name]?
  let pokemonSpecies: [NamedAPIResource]?   // [PokemonSpecies]
}

enum PokemonColorName: String, Codable {
  case black
  case blue
  case brown
  case gray
  case green
  case pink
  case purple
  case red
  case white
  case yellow
  
  var color: Color {
    return Color("pokemon-\(self.rawValue)")
  }
}
