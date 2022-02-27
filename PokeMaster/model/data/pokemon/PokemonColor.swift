//
//  PokemonColor.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct PokemonColor: Codable, Identifiable {
  let id: Int
  let name: String
  let names: [Name]
  let pokemonSpecies: [NamedAPIResource]    // [PokemonSpecies]
}

//struct SpeciesColor: Codable {
//  let name: ColorNameEnum
//  enum ColorNameEnum: String, Codable {
//    case black
//    case blue
//    case brown
//    case gray
//    case green
//    case pink
//    case purple
//    case red
//    case white
//    case yellow
//    var color: SwiftUI.Color {
//      return SwiftUI.Color("pokemon-\(self.rawValue)")
//    }
//  }
//}
