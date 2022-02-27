//
//  Region.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Region: Codable, Identifiable {
  let id: Int
  let locations: [NamedAPIResource]         // [Location]
  let name: String
  let names: [Name]
  let mainGeneration: NamedAPIResource      // Generation
  let pokedexes: [NamedAPIResource]         // [Pokedex]
  let versionGroups: [NamedAPIResource]     // [VersionGroup]
}
