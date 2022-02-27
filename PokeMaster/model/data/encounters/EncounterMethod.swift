//
//  EncounterMethod.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct EncounterMethod: Codable, Identifiable {
  let id: Int
  let name: String
  let order: Int
  let names: [Name]
}
