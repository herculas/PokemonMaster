//
//  Machine.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Machine: Codable, Identifiable {
  let id: Int
  let item: NamedAPIResource                // Item
  let move: NamedAPIResource                // Move
  let versionGroup: NamedAPIResource        // VersionGroup
}
