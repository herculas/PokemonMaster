//
//  VerboseEffect.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct VerboseEffect: Codable, LanguageTextScheme {
  let effect: String?
  let shortEffect: String?
  let language: NamedAPIResource?                     // Language
  var text: String? { self.effect }
}
