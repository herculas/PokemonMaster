//
//  Berry.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Berry: Codable, Identifiable {
  let id: Int
  let name: String
  let growthTime: Int
  let maxHarvest: Int
  let naturalGiftPower: Int
  let size: Int
  let smoothness: Int
  let soilDryness: Int
  let firmness: NamedAPIResource            // BerryFirmness
  let flavors: [BerryFlavorMap]
  let item: NamedAPIResource                // Item
  let naturalGiftType: NamedAPIResource     // CoreType
}

struct BerryFlavorMap: Codable {
  let potency: Int
  let flavor: NamedAPIResource              // BerryFlavor
}
