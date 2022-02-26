//
//  Species.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI

/// A Pokémon Species forms the basis for at least one Pokémon. Attributes of a Pokémon species are shared across all varieties of Pokémon within the species. A good example is _Wormadam_; _Wormadam_ is the species which can be found in three different varieties, _Wormadam-Trash_, _Wormadam-Sandy_ and _Wormadam-Plant_.
struct Species: Codable {
  
  /// The identifier for this species
  let id: Int
  
  /// The name for this species
  let name: String
  
  /// The order in which species should be sorted. Based on National Dex order, except families are grouped together and sorted by stage
  let order: Int
  
  /// The chance of this Pokémon being female, in eighths; or -1 for genderless
  let genderRate: Int
  
  /// The base capture rate, up to 255. The higher the number, the easier the catch
  let captureRate: Int
  
  /// The happiness when caught by a normal Pokéball, up to 255. The higher the number, the happier the Pokémon
  let baseHappiness: Int
  
  /// Whether or not this is a baby Pokémon
  let isBaby: Bool
  
  /// Whether or not this is a legendary Pokémon
  let isLegendary: Bool
  
  /// Whether or not this is a mythical Pokémon
  let isMythical: Bool
  
  /// Initial hatch counter, one must walk 255 * (hatch_counter + 1) steps before this Pokémon's egg hatches, unless utilizing bonuses like Flame Body's
  let hatchCounter: Int
  
  /// Whether or not this Pokémon has _visual_ gender differences
  let hasGenderDifferences: Bool
  
  /// Whether or not this Pokémon has multiple forms and can switch between them
  let formsSwitchable: Bool
  
  /// The color of this Pokémon for Pokédex search
  let color: SpeciesColor
  
  /// The names of this Pokémon listed in different languages
  let names: [Name]
  
  /// The genus of this Pokémon species listed in multiple languages
  let genera: [SpeciesGenus]
  
  /// A list of flavor text enteis for this Pokémon species
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
