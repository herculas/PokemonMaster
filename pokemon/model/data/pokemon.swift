//
//  pokemon.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import Foundation

struct Pokemon: Codable {
  let id: Int
  let types: [`Type`]
  let abilities: [AbilityEntry]
  let stats: [Stat]
  let species: SpeciesEntry
  let height: Int
  let weight: Int
  
  struct `Type`: Codable {
    let slot: Int
    let type: Internal
    
    struct Internal: Codable {
      let name: String
      let url: URL
    }
  }
  
  struct AbilityEntry: Codable, Identifiable {
    var id: URL { self.ability.url }
    let slot: Int
    let ability: Internal
    
    struct Internal: Codable {
      let name: String
      let url: URL
    }
  }
  
  struct Stat: Codable {
    let baseStat: Int
    let stat: Internal
    
    enum Case: String, Codable {
      case speed
      case specialDefense = "special-defense"
      case specialAttack = "special-attack"
      case defense
      case attack
      case hp
    }
    
    struct Internal: Codable {
      let name: Case
    }
  }
  
  struct SpeciesEntry: Codable {
    let name: String
    let url: URL
  }
}

extension Pokemon: Identifiable {}

extension Pokemon: CustomStringConvertible {
  var description: String {
    "Pokemon - \(self.id) - \(self.species.name)"
  }
}
