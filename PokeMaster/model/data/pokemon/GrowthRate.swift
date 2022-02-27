//
//  GrowthRate.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct GrowthRate: Codable, Identifiable {
  let id: Int
  let name: String
  let formula: String
  let descriptions: [Description]
  let levels: [GrowthRateExperienceLevel]
  let pokemonSpecies: [NamedAPIResource]    // [PokemonSpecies]
}

struct GrowthRateExperienceLevel: Codable {
  let level: Int
  let experience: Int
}
