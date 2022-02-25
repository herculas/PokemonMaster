//
//  Pokemon.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation
import SwiftUI

struct Pokemon: Codable, Identifiable {
  let id: Int
  let types: [PokemonType]
  let abilities: [PokemonAbilityEntry]
  let stats: [PokemonStat]
  let species: PokemonSpeciesEntry
  let height: Int
  let weight: Int
}

struct PokemonAbilityEntry: Codable, Identifiable {
  var id: URL { self.ability.url }
  let slot: Int
  let ability: PokemonAbilityEntry.Internal
  struct Internal: Codable {
    let name: String
    let url: URL
  }
}

struct PokemonStat: Codable {
  let baseStat: Int
  let stat: PokemonStat.Internal
  struct Internal: Codable {
    let name: PokemonStat.StatEnum
  }
  enum StatEnum: String, Codable {
    case speed
    case specialDefense = "special-defense"
    case specialAttack = "special-attack"
    case defense
    case attack
    case hp
  }
}

struct PokemonSpeciesEntry: Codable {
  let name: String
  let url: URL
}

extension Pokemon: CustomDebugStringConvertible {
  var debugDescription: String {
    "Pokemon-\(self.id)-\(self.species.name)"
  }
}
