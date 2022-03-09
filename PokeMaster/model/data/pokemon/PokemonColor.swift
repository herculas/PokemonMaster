//
//  PokemonColor.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct PokemonColor: Codable, Identifiable {
  let id: Int?
  let name: String?
  let names: [Name]?
  let pokemonSpecies: [NamedAPIResource]?   // [PokemonSpecies]
}
