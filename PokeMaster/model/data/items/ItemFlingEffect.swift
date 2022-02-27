//
//  ItemFlingEffect.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct ItemFlingEffect: Codable, Identifiable {
  let id: Int
  let name: String
  let effectEntries: [Effect]
  let items: [NamedAPIResource]             // [Item]
}
