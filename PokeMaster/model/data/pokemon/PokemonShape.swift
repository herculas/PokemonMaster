//
//  PokemonShape.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct PokemonShape: Codable, Identifiable {
  let id: Int?
  let name: String?
  let awesomeNames: [AwesomeName]?
  let names: [Name]?
  let pokemonSpecies: [NamedAPIResource]?             // [PokemonSpecies]
}

struct AwesomeName: Codable, LanguageTextScheme {
  let awesomeName: String?
  let language: NamedAPIResource?                     // Language
  var text: String? { self.awesomeName }
}
