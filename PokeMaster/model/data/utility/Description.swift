//
//  Description.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Description: Codable, LanguageTextScheme {
  let description: String?
  let language: NamedAPIResource?                     // Language
  var text: String? { self.description }
}
