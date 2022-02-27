//
//  PokemonForm.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct PokemonForm: Codable, Identifiable {
  let id: Int
  let name: String
  let order: Int
  let formOrder: Int
  let isDefault: Bool
  let isBattleOnly: Bool
  let isMega: Bool
  let formName: String
  let pokemon: NamedAPIResource             // Pokemon
  let types: [PokemonFormType]
  let sprites: PokemonFormSprites
  let versionGroup: NamedAPIResource        // VersionGroup
  let names: [Name]
  let formNames: [Name]
}

struct PokemonFormSprites: Codable {
  let frontDefault: String
  let frontShiny: String
  let backDefault: String
  let backShiny: String
}
