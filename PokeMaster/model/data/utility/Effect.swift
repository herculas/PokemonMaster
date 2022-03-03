//
//  Effect.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Effect: Codable, LanguageTextScheme {
  let effect: String?
  let language: NamedAPIResource?                     // Language
  var text: String? { self.effect }
}
