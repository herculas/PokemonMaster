//
//  Gender.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Gender: Codable, Identifiable {
  let id: Int?
  let name: String?
  let pokemonSpeciesDetails: [PokemonSpeciesGender]?
  let requiredForEvolution: [NamedAPIResource]?       // [PokemonSpecies]
}

struct PokemonSpeciesGender: Codable {
  let rate: Int?
  let pokemonSpecies: NamedAPIResource?               // PokemonSpecies
}
