//
//  Flavor.swift
//  PokeMaster
//
//  Created by 宋睿 on 25/2/2022.
//

import Foundation

struct FlavorText: Codable {
  let flavorText: String?
  let language: NamedAPIResource?                     // Language
  let version: NamedAPIResource?                      // Version
}
