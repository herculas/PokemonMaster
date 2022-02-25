//
//  Ability.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Ability: Codable {
  let id: Int
  let names: [Name]
  let flavorTextEntries: [FlavorTextEntry]
}
