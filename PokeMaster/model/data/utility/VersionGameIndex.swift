//
//  VersionGameIndex.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct VersionGameIndex: Codable {
  let gameIndex: Int?
  let version: NamedAPIResource?                      // Version
}
