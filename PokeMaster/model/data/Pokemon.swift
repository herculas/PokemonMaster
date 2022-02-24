//
//  Pokemon.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation
import SwiftUI

struct Pokemon: Codable {
  
  let id: Int
  let types: [Pokemon.`Type`]
  let abilities: [Pokemon.AbilityEntry]
  let stats: [Pokemon.Stat]
  let species: Pokemon.SpeciesEntry
  let height: Int
  let weight: Int
  
  struct `Type`: Codable {
    let slot: Int
    let type: Pokemon.`Type`.Internal
    struct Internal: Codable {
      let name: String
      let url: URL
    }
  }
  
  struct Stat: Codable {
    let baseStat: Int
    let stat: Pokemon.Stat.Internal
    struct Internal: Codable {
      let name: Pokemon.Stat.Case
    }
    enum Case: String, Codable {
      case speed
      case specialDefense = "special-defense"
      case specialAttack = "special-attack"
      case defense
      case attack
      case hp
    }
  }
  
  struct SpeciesEntry: Codable {
    let name: String
    let url: URL
  }
  
  struct AbilityEntry: Codable, Identifiable {
    let slot: Int
    let ability: Pokemon.AbilityEntry.Internal
    var id: URL { self.ability.url }
    struct Internal: Codable {
      let name: String
      let url: URL
    }
  }
}

extension Pokemon: Identifiable {}

extension Pokemon: CustomDebugStringConvertible {
  var debugDescription: String {
    "Pokemon-\(self.id)-\(self.species.name)"
  }
}
