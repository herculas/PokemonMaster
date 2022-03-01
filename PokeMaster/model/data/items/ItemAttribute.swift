//
//  ItemAttribute.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct ItemAttribute: Codable, Identifiable {
  let id: Int?
  let name: String?
  let items: [NamedAPIResource]?                      // [Item]
  let names: [Name]?
  let descriptions: [Description]?
}
