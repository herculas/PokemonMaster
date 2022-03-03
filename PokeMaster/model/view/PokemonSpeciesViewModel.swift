//
//  PokemonSpeciesViewModel.swift
//  PokeMaster
//
//  Created by 宋睿 on 2/3/2022.
//

import Foundation

struct PokemonSpeciesViewModel {
  let pokemonSpecies: PokemonSpecies
  init(species: PokemonSpecies) {
    self.pokemonSpecies = species
  }
  var pokemonNames: [String: String] { self.pokemonSpecies.names?.languageTextMap ?? [:] }
  var genusNames: [String: String] { self.pokemonSpecies.genera?.languageTextMap ?? [:] }
  var discriptions: [String: String] {
    if var map = self.pokemonSpecies.flavorTextEntries?.languageTextMap {
      for kv in map {
        if kv.key == "zh-Hans" || kv.key == "zh-Hant" {
          map.updateValue(kv.value.carriageReturnRemoved, forKey: kv.key)
        } else {
          map.updateValue(kv.value.carriageReturnRemovedWithSpace, forKey: kv.key)
        }
      }
      return map
    }
    return [:]
  }
}
