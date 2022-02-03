//
//  species.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import SwiftUI

struct PokemonSpecies: Codable {
  let color: Color
  let names: [Name]
  let genera: [Genus]
  let flavorTextEntries: [FlavorTextEntry]
  
  struct Color: Codable {
    let name: Name
    enum Name: String, Codable {
      case black, blue, brown, gray, green, pink, purple, red, white, yellow
      var color: SwiftUI.Color {
        return SwiftUI.Color("pokemon-\(rawValue)")
      }
    }
  }
  
  struct Name: Codable, LanguageTextEntry {
    let language: Language
    let name: String
    var text: String { self.name }
  }
  
  struct FlavorTextEntry: Codable, LanguageTextEntry {
    let language: Language
    let flavorText: String
    var text: String { self.flavorText }
  }
  
  struct Genus: Codable, LanguageTextEntry {
    let language: Language
    let genus: String
    var text: String { self.genus }
  }
}
