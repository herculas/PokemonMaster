//
//  MoveTarget.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct MoveTarget: Codable, Identifiable {
  let id: Int
  let name: String
  let descriptions: [Description]
  let moves: [NamedAPIResource]             // [Move]
  let names: [Name]
}
