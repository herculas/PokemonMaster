//
//  Pokemon.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Pokemon: Codable, Identifiable {
  let id: Int?
  let name: String?
  let baseExperience: Int?
  let height: Int?
  let isDefault: Bool?
  let order: Int?
  let weight: Int?
  let abilities: [PokemonAbility]?
  let forms: [NamedAPIResource]?                      // [PokemonForm]
  let gameIndices: [VersionGameIndex]?
  let heldItems: [PokemonHeldItem]?
  let locationAreaEncounters: URL?
  let moves: [PokemonMove]?
  let pastTypes: [PokemonTypePast]?
  let sprites: PokemonSprites?
  let species: NamedAPIResource?                      // PokemonSpecies
  let stats: [PokemonStat]?
  let types: [PokemonType]?
}

struct PokemonAbility: Codable {
  let isHidden: Bool?
  let slot: Int?
  let ability: NamedAPIResource?                      // Ability
}

struct PokemonType: Codable {
  let slot: Int?
  let type: NamedAPIResource?                         // CoreType
}

struct PokemonFormType: Codable {
  let slot: Int?
  let type: NamedAPIResource?                         // CoreType
}

struct PokemonTypePast: Codable {
  let generation: NamedAPIResource?                   // Generation
  let types: [PokemonType]?
}

struct PokemonHeldItem: Codable {
  let item: NamedAPIResource?                         // Item
  let versionDetails: [PokemonHeldItemVersion]?
}

struct PokemonHeldItemVersion: Codable {
  let version: NamedAPIResource?                      // Version
  let rarity: Int?
}

struct PokemonMove: Codable {
  let move: NamedAPIResource?                         // Move
  let versionGroupDetails: [PokemonMoveVersion]?
}

struct PokemonMoveVersion: Codable {
  let moveLearnMethod: NamedAPIResource?              // MoveLearnMethod
  let versionGroup: NamedAPIResource?                 // VersionGroup
  let levelLearnedAt: Int?
}

struct PokemonStat: Codable {
  let stat: NamedAPIResource?                         // Stat
  let effort: Int?
  let baseStat: Int?
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

extension Pokemon: CustomDebugStringConvertible {
  var debugDescription: String {
    "Pokemon-\(self.id ?? 0) - \(self.species?.name ?? "unknown name")"
  }
}
