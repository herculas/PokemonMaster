//
//  Pokemon.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

//struct Pokemon: Codable, Identifiable {
//  let id: Int
//  let types: [PokemonType]
//  let abilities: [PokemonAbilityEntry]
//  let stats: [PokemonStat]
//  let species: PokemonSpeciesEntry
//  let height: Int
//  let weight: Int
//}

struct Pokemon: Codable, Identifiable {
  let id: Int
  let name: String
  let baseExperience: Int
  let height: Int
  let isDefault: Bool
  let order: Int
  let weight: Int
  let abilities: [PokemonAbility]
  let forms: [NamedAPIResource]             // [PokemonForm]
  let gameIndices: [VersionGameIndex]
  let heldItems: [PokemonHeldItem]
  let locationAreaEncounters: String        // is a url
  let moves: [PokemonMove]
  let pastTypes: [PokemonTypePast]
  let sprites: PokemonSprites
  let species: NamedAPIResource             // PokemonSpecies
  let stats: [PokemonStat]
  let types: [PokemonType]
}

//struct PokemonAbilityEntry: Codable, Identifiable {
//  var id: URL { self.ability.url }
//  let slot: Int
//  let ability: PokemonAbilityEntry.Internal
//  struct Internal: Codable {
//    let name: String
//    let url: URL
//  }
//}

struct PokemonAbility: Codable {
  let isHidden: Bool
  let slot: Int
  let ability: NamedAPIResource             // Ability
}

struct PokemonType: Codable {
  let slot: Int
  let type: NamedAPIResource                // CoreType
}

struct PokemonFormType: Codable {
  let slot: Int
  let type: NamedAPIResource                // CoreType
}

struct PokemonTypePast: Codable {
  let generation: NamedAPIResource          // Generation
  let types: [PokemonType]
}

struct PokemonHeldItem: Codable {
  let item: NamedAPIResource                // Item
  let versionDetails: [PokemonHeldItemVersion]
}

struct PokemonHeldItemVersion: Codable {
  let version: NamedAPIResource             // Version
  let rarity: Int
}

struct PokemonMove: Codable {
  let move: NamedAPIResource                // Move
  let versionGroupDetails: [PokemonMoveVersion]
}

struct PokemonMoveVersion: Codable {
  let moveLearnMethod: NamedAPIResource     // MoveLearnMethod
  let versionGroup: NamedAPIResource        // VersionGroup
  let levelLearnedAt: Int
}

//struct PokemonStat: Codable {
//  let baseStat: Int
//  let stat: PokemonStat.Internal
//  struct Internal: Codable {
//    let name: PokemonStat.StatEnum
//  }
//  enum StatEnum: String, Codable {
//    case speed
//    case specialDefense = "special-defense"
//    case specialAttack = "special-attack"
//    case defense
//    case attack
//    case hp
//  }
//}

struct PokemonStat: Codable {
  let stat: NamedAPIResource                // Stat
  let effort: Int
  let baseStat: Int
}

struct PokemonSprites: Codable {
  let frontDefault: String?
  let frontShiny: String?
  let frontFemale: String?
  let frontShinyFemale: String?
  let backDefault: String?
  let backShiny: String?
  let backFemale: String?
  let backShinyFemale: String?
}

//struct PokemonSpeciesEntry: Codable {
//  let name: String
//  let url: URL
//}

extension Pokemon: CustomDebugStringConvertible {
  var debugDescription: String {
    "Pokemon-\(self.id)-\(self.species.name)"
  }
}
