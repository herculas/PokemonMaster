//
//  pokemonVM.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import SwiftUI

struct PokemonViewModel: Codable, Identifiable {
  
  let pokemon: Pokemon
  let species: PokemonSpecies
  init(pokemon: Pokemon, species: PokemonSpecies) {
    self.pokemon = pokemon
    self.species = species
  }
  
  var id: Int { self.pokemon.id }
  var color: Color { self.species.color.name.color }
  var height: String { "\(Double(self.pokemon.height) / 10)m" }
  var weight: String { "\(Double(self.pokemon.weight) / 10)kg" }
  var nameCn: String { self.species.names.chinese }
  var nameEn: String { self.species.names.english }
  var genusCn: String { self.species.genera.chinese }
  var genusEn: String { self.species.genera.english }
  var types: [`Type`] {
    self.pokemon.types
      .sorted { $0.slot < $1.slot }
      .map { `Type`(pokemonType: $0) }
  }
  var iconImageURL: URL {
    URL(string: "https://raw.githubusercontent.com/onevcat/pokemaster-images/master/images/Pokemon-\(id).png")!
  }
  var detailPageURL: URL {
    URL(string: "https://cn.portal-pokemon.com/play/pokedex/\(String(format: "%03d", self.id))")!
  }
  var descTextCn: String { self.species.flavorTextEntries.chinese.newlineRemoved }
  var descTextEn: String { self.species.flavorTextEntries.english.newlineRemoved }
}

extension PokemonViewModel {
  struct `Type`: Identifiable {
    
    let name: String
    let color: Color
    init(name: String, color: Color) {
      self.name = name
      self.color = color
    }
    init(pokemonType: Pokemon.`Type`) {
      if let v = TypeInternal(rawValue: pokemonType.type.name)?.value {
        self = v
      } else {
        self.name = "???"
        self.color = .gray
      }
    }
    
    var id: String { return self.name }
    
    enum TypeInternal: String {
      case normal
      case fighting
      case flying
      case poison
      case ground
      case rock
      case bug
      case ghost
      case steel
      case fire
      case water
      case grass
      case electric
      case psychic
      case ice
      case dragon
      case dark
      case fairy
      case unknown
      case shadow
      
      var value: Type {
        switch self {
        case .normal:
          return Type(name: "一般", color: Color(hex: 0xBBBBAC))
        case .fighting:
          return Type(name: "格斗", color: Color(hex: 0xAE5B4A))
        case .flying:
          return Type(name: "飞行", color: Color(hex: 0x7199F8))
        case .poison:
          return Type(name: "毒", color: Color(hex: 0x9F5A96))
        case .ground:
          return Type(name: "地面", color: Color(hex: 0xD8BC65))
        case .rock:
          return Type(name: "岩石", color: Color(hex: 0xB8AA6F))
        case .bug:
          return Type(name: "虫", color: Color(hex: 0xADBA44))
        case .ghost:
          return Type(name: "幽灵", color: Color(hex: 0x6667B5))
        case .steel:
          return Type(name: "钢", color: Color(hex: 0xAAAABA))
        case .fire:
          return Type(name: "火", color: Color(hex: 0xEB5435))
        case .water:
          return Type(name: "水", color: Color(hex: 0x5198F7))
        case .grass:
          return Type(name: "草", color: Color(hex: 0x8BC965))
        case .electric:
          return Type(name: "电", color: Color(hex: 0xF7CD55))
        case .psychic:
          return Type(name: "超能力", color: Color(hex: 0xEC6298))
        case .ice:
          return Type(name: "冰", color: Color(hex: 0x90DBFB))
        case .dragon:
          return Type(name: "龙", color: Color(hex: 0x7469E6))
        case .dark:
          return Type(name: "恶", color: Color(hex: 0x725647))
        case .fairy:
          return Type(name: "妖精", color: Color(hex: 0xF3AFFA))
        case .unknown:
          return Type(name: "???", color: Color(hex: 0x749E91))
        case .shadow:
          return Type(name: "暗", color: Color(hex: 0x9F5A96))
        }
      }
    }
  }
}
