//
//  PokemonVM.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI
import Combine

struct PokemonViewModel: Codable, Identifiable {
  var id: Int { self.pokemon.id ?? 0 }
  let pokemon: Pokemon
  let pokemonSpecies: PokemonSpecies
  let pokemonColor: PokemonColor
  
  init(pokemon: Pokemon,
       species: PokemonSpecies,
       color: PokemonColor
  ) {
    self.pokemon = pokemon
    self.pokemonSpecies = species
    self.pokemonColor = color
  }
}

extension PokemonViewModel {
  var color: Color { self.pokemonColor.name?.color ?? Color("pokemon-gray") }
  var height: String { "\(Double(self.pokemon.height ?? 0) / 10)m" }
  var weight: String { "\(Double(self.pokemon.weight ?? 0) / 10)kg" }
}

extension PokemonViewModel {
//  var nameJaHrkt: String? { self.pokemonSpecies.names.japaneseHiraganaAndKatakana }
//  var nameJaRoman: String? { self.pokemonSpecies.names.japaneseRomanization }
//  var nameKorean: String? { self.pokemonSpecies.names.korean }
//  var nameFrench: String? { self.pokemonSpecies.names.french }
//  var nameGerman: String? { self.pokemonSpecies.names.german }
//  var nameSpanish: String? { self.pokemonSpecies.names.spanish }
//  var nameItalian: String? { self.pokemonSpecies.names.italian }
//  var nameEnglish: String? { self.pokemonSpecies.names.english }
//  var nameCzech: String? { self.pokemonSpecies.names.czech }
//  var nameJapanese: String? { self.pokemonSpecies.names.japanese }
//  var nameSimpChn: String? { self.pokemonSpecies.names.simplifiedChinese }
//  var nameTradChn: String? { self.pokemonSpecies.names.traditionalChinese }
//  var nameBraPort: String? { self.pokemonSpecies.names.brazilianPortuguese }
  
//  var genusPrimary: String {}
//  var genusSecondary: String {}
  //  var nameChinese: String { self.species.names.simplifiedChinese }
  //  var nameEnglish: String { self.species.names.english }
  //  var genusChinese: String { self.species.genera.simplifiedChinese }
  //  var genusEnglish: String { self.species.genera.english }
}

//struct PokemonViewModel: Codable, Identifiable {
//  var types: [PokemonTypeView] { self.pokemon.types.sorted { $0.slot < $1.slot }.map { PokemonTypeView(pokemonType: $0) } }
//  var iconImageURL: URL { URL(string: "https://raw.githubusercontent.com/onevcat/pokemaster-images/master/images/Pokemon-\(self.id).png")! }
//  var detailPageURL: URL { URL(string: "https://cn.portal-pokemon.com/play/pokedex/\(String(format: "%03d", self.id))")! }
//  var descriptionTextSimplifiedChinese: String { self.species.flavorTextEntries.simplifiedChinese.newlineRemoved }
//  var descriptionTextEnglish: String { self.species.flavorTextEntries.english.newlineRemoved }
//}

extension PokemonViewModel: CustomStringConvertible {
  var description: String {
    "PokemonViewModel-\(self.id)-\(self.pokemon.name ?? "non-name")"
  }
}
