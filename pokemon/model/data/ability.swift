//
//  ability.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import Foundation

struct Ability: Codable {
  let id: Int
  let names: [Name]
  let flavorTextEntries: [FlavorTextEntry]
  
  struct Name: Codable, LanguageTextEntry {
    let language: Language
    let name: String
    var text: String { self.name }
  }
  
  struct FlavorTextEntry: Codable, LanguageTextEntry {
    let language: Language
    let flavorText: String
    var text: String { self.flavorText }
  }
}
