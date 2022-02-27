//
//  MoveAilment.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct MoveAilment: Codable, Identifiable {
  let id: Int
  let name: String
  let moves: [NamedAPIResource]             // [Move]
  let names: [Name]
}
