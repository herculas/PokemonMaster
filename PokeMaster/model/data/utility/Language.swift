//
//  Language.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Language: Codable, Identifiable {
  let id: Int?
  let name: String?
  let official: Bool?
  let iso639: String?
  let iso3166: String?
  let names: [Name]?
}

protocol LanguageTextScheme {
  var text: String? { get }
  var language: NamedAPIResource? { get }
}
