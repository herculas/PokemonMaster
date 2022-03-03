//
//  PokemonVM.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct PokemonViewModel {
  let pokemon: Pokemon
  init(pokemon: Pokemon) {
    self.pokemon = pokemon
  }
}

extension PokemonViewModel {
  var height: String { "\(Double(self.pokemon.height ?? 0) / 10)m" }
  var weight: String { "\(Double(self.pokemon.weight ?? 0) / 10)kg"}
  var types: [Int] { self.pokemon.types?.sorted { $0.slot! < $1.slot! }.map { $0.slot! } ?? [] }
  var iconUrl: URL { URL(string: "https://raw.githubusercontent.com/onevcat/pokemaster-images/master/images/Pokemon-\(self.pokemon.id ?? 1).png")! }
  var detailUrl: URL { URL(string: "https://cn.portal-pokemon.com/play/pokedex/\(String(format: "%03d", self.pokemon.id ?? 1))")! }
}

extension PokemonViewModel: CustomStringConvertible {
  var description: String { "PokemonViewModel-\(self.pokemon.id ?? -114514)-\(self.pokemon.name ?? "non-name")" }
}
