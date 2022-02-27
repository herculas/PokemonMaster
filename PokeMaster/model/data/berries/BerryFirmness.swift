//
//  BerryFirmness.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct BerryFirmness: Codable, Identifiable {
  let id: Int
  let name: String
  let berries: [NamedAPIResource]           // [Berry]
  let names: [Name]
}
