//
//  Type.swift
//  PokeMaster
//
//  Created by 宋睿 on 25/2/2022.
//

import SwiftUI

struct PokemonType: Codable {
  let slot: Int
  let type: PokemonType.Internal
  struct Internal: Codable {
    let name: String
    let url: URL
  }
}

struct PokemonTypeView: Identifiable {
  var id: String { self.name }
  let name: String
  let color: Color
  
  init(name: String, color: Color) {
    self.name = name
    self.color = color
  }
  
  init(pokemonType: PokemonType) {
    if let value = PokemonTypeEnum(rawValue: pokemonType.type.name)?.value {
      self = value
    } else {
      self.name = "???"
      self.color = .gray
    }
  }
}

enum PokemonTypeEnum: String {
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
  
  var value: PokemonTypeView {
    switch self {
    case .normal: return PokemonTypeView(name: "一般", color: Color(hex: 0xBBBBAC))
    case .fighting: return PokemonTypeView(name: "格斗", color: Color(hex: 0xAE5B4A))
    case .flying: return PokemonTypeView(name: "飞行", color: Color(hex: 0x7199F8))
    case .poison: return PokemonTypeView(name: "毒", color: Color(hex: 0x9F5A96))
    case .ground: return PokemonTypeView(name: "地面", color: Color(hex: 0xD8BC65))
    case .rock: return PokemonTypeView(name: "岩", color: Color(hex: 0xB8AA6F))
    case .bug: return PokemonTypeView(name: "虫", color: Color(hex: 0xADBA44))
    case .ghost: return PokemonTypeView(name: "鬼", color: Color(hex: 0x6667B5))
    case .steel: return PokemonTypeView(name: "钢", color: Color(hex: 0xAAAABA))
    case .fire: return PokemonTypeView(name: "火", color: Color(hex: 0xEB5435))
    case .water: return PokemonTypeView(name: "水", color: Color(hex: 0x5198F7))
    case .grass: return PokemonTypeView(name: "草", color: Color(hex: 0x8BC965))
    case .electric: return PokemonTypeView(name: "电气", color: Color(hex: 0xF7CD55))
    case .psychic: return PokemonTypeView(name: "超能力", color: Color(hex: 0xEC6298))
    case .ice: return PokemonTypeView(name: "冰", color: Color(hex: 0x90DBFB))
    case .dragon: return PokemonTypeView(name: "龙", color: Color(hex: 0x7469E6))
    case .dark: return PokemonTypeView(name: "恶", color: Color(hex: 0x725647))
    case .fairy: return PokemonTypeView(name: "妖精", color: Color(hex: 0xF3AFFA))
    case .unknown: return PokemonTypeView(name: "???", color: Color(hex: 0x749E91))
    case .shadow: return PokemonTypeView(name: "暗", color: Color(hex: 0x9F5A96))
    }
  }
}
