//
//  ItemCategory.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct ItemCategory: Codable, Identifiable {
  let id: Int?
  let name: String?
  let items: [NamedAPIResource]?                      // [Item]
  let names: [Name]?
  let pocket: [NamedAPIResource]?                     // [ItemPocket]
}
