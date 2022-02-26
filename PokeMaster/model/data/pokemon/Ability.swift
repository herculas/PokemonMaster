//
//  Ability.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

/// Abilities provide _passive_ effects for Pokémon in battle or in the overworld. Pokémon have multiple possible abilities but can have _only one_ ability at a time.
struct Ability: Codable {
  
  /// The identifier for this ability
  let id: Int
  
  /// The name for this ability
  let name: String
  
  /// Whether or not this ability originated in the main series of Pokémon
  let isMainSeries: Bool
  
  /// The names of this ability listed in different languages
  let names: [Name]
  
  /// The falvor text of this ability listed in different languages
  let flavorTextEntries: [FlavorTextEntry]
}
