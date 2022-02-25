//
//  Flavor.swift
//  PokeMaster
//
//  Created by 宋睿 on 25/2/2022.
//

import Foundation

struct FlavorTextEntry: Codable, LanguageTextEntry {
  let flavorText: String
  let language: Language
  var text: String { self.flavorText }
}
