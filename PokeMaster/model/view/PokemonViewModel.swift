////
////  PokemonVM.swift
////  PokeMaster
////
////  Created by 宋睿 on 22/2/2022.
////
//
//import SwiftUI
//
//struct PokemonViewModel: Codable, Identifiable {
//  
//  var id: Int { self.pokemon.id }
//  
//  let pokemon: Pokemon
//  let species: Species
//  
//  init(pokemon: Pokemon, species: Species) {
//    self.pokemon = pokemon
//    self.species = species
//  }
//  
//  var color: Color { self.species.color.name.color }
//  var height: String { "\(Double(self.pokemon.height) / 10)m" }
//  var weight: String { "\(Double(self.pokemon.weight) / 10)kg" }
//  var nameChinese: String { self.species.names.simplifiedChinese }
//  var nameEnglish: String { self.species.names.english }
//  var genusChinese: String { self.species.genera.simplifiedChinese }
//  var genusEnglish: String { self.species.genera.english }
//  
//  var types: [PokemonTypeView] { self.pokemon.types.sorted { $0.slot < $1.slot }.map { PokemonTypeView(pokemonType: $0) } }
//  var iconImageURL: URL { URL(string: "https://raw.githubusercontent.com/onevcat/pokemaster-images/master/images/Pokemon-\(self.id).png")! }
//  var detailPageURL: URL { URL(string: "https://cn.portal-pokemon.com/play/pokedex/\(String(format: "%03d", self.id))")! }
//  var descriptionTextSimplifiedChinese: String { self.species.flavorTextEntries.simplifiedChinese.newlineRemoved }
//  var descriptionTextEnglish: String { self.species.flavorTextEntries.english.newlineRemoved }
//}
//
//extension PokemonViewModel: CustomStringConvertible {
//  var description: String {
//    "PokemonViewModel-\(self.id)-\(self.nameChinese)-\(self.nameEnglish)"
//  }
//}
//
//
