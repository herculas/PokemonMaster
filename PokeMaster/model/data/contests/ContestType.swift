//
//  ContestType.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct ContestType: Codable, Identifiable {
  let id: Int?
  let name: String?
  let berryFlavor: NamedAPIResource?                  // BerryFlavor
  let names: [ContestName]?
}

struct ContestName: Codable, LanguageTextScheme {
  let name: String?
  let color: String?
  let language: NamedAPIResource?                     // Language
  var text: String? { self.name }
}
