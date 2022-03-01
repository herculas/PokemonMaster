//
//  VersionGroup.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct VersionGroup: Codable, Identifiable {
  let id: Int?
  let name: String?
  let order: Int?
  let generation: NamedAPIResource?                   // Generation
  let moveLearnMethods: [NamedAPIResource]?           // [MoveLearnMethod]
  let pokedexes: [NamedAPIResource]?                  // [Pokedex]
  let regions: [NamedAPIResource]?                    // [Region]
  let versions: [NamedAPIResource]?                   // [Version]
}
