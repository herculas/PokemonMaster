//
//  BerryFlavor.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct BerryFlavor: Codable, Identifiable {
  let id: Int
  let name: String
  let berries: [FlavorBerryMap]
  let contestType: NamedAPIResource         // ContestType
  let names: [Name]
}

struct FlavorBerryMap: Codable {
  let potency: Int
  let berry: NamedAPIResource               // Berry
}
