//
//  PalParkArea.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct PalParkArea: Codable, Identifiable {
  let id: Int?
  let name: String?
  let names: [Name]?
  let pokemonEncounters: [PalParkEncounterSpecies]?
}

struct PalParkEncounterSpecies: Codable {
  let baseScore: Int?
  let rate: Int?
  let pokemonSpecies: NamedAPIResource?               // PokemonSpecies
}
