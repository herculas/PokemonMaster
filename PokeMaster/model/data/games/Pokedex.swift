//
//  Pokedex.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Pokedex: Codable, Identifiable {
  let id: Int
  let name: String
  let isMainSeries: Bool
  let descriptions: [Description]
  let names: [Name]
  let pokemonEntries: [PokemonEntry]
  let region: NamedAPIResource              // Region
  let versionGroups: [NamedAPIResource]     // [VersionGroup]
}

struct PokemonEntry: Codable {
  let entryNumber: Int
  let pokemonSpecies: [NamedAPIResource]    // [PokemonSpecies]
}
