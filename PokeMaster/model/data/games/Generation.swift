//
//  Generation.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Generation: Codable, Identifiable {
  let id: Int?
  let name: String?
  let abilities: [NamedAPIResource]?                  // [Ability]
  let names: [Name]?
  let mainRegion: NamedAPIResource?                   // Region
  let moves: NamedAPIResource?                        // [Move]
  let pokemonSpecies: [NamedAPIResource]?             // [PokemonSpecies]
  let types: [NamedAPIResource]?                      // [CoreType]
  let versionGroups: [NamedAPIResource]?              // [VersionGroup]
}
