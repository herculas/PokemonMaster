//
//  Ability.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Ability: Codable, Identifiable {
  let id: Int?
  let name: String?
  let isMainSeries: Bool?
  let generation: NamedAPIResource?                   // Generation
  let names: [Name]?
  let effectEntries: [VerboseEffect]?
  let effectChanges: [AbilityEffectChange]?
  let flavorTextEntries: [AbilityFlavorText]?
  let pokemon: [AbilityPokemon]?
}

struct AbilityEffectChange: Codable {
  let effectEntries: [Effect]?
  let versionGroup: NamedAPIResource?                 // VersionGroup
}

struct AbilityFlavorText: Codable {
  let flavorText: String?
  let language: NamedAPIResource?                     // Language
  let versionGroup: NamedAPIResource?                 // VersionGroup
}

struct AbilityPokemon: Codable {
  let isHidden: Bool?
  let slot: Int?
  let pokemon: NamedAPIResource?                      // Pokemon
}
