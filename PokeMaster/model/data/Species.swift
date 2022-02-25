//
//  Species.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI

struct Species: Codable {
  let color: SpeciesColor
  let names: [Name]
  let genera: [SpeciesGenus]
  let flavorTextEntries: [FlavorTextEntry]
}

struct SpeciesColor: Codable {
  let name: ColorNameEnum
  enum ColorNameEnum: String, Codable {
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
    var color: SwiftUI.Color {
      return SwiftUI.Color("pokemon-\(self.rawValue)")
    }
  }
}

struct SpeciesGenus: Codable, LanguageTextEntry {
  let language: Language
  let genus: String
  var text: String { self.genus }
}
