//
//  ItemPocket.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct ItemPocket: Codable, Identifiable {
  let id: Int
  let name: String
  let categories: [NamedAPIResource]        // [ItemCategory]
  let names: [Name]
}
