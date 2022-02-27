//
//  ContestEffect.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct ContestEffect: Codable, Identifiable {
  let id: Int
  let appeal: Int
  let jam: Int
  let effectEntries: [Effect]
  let flavorTextEntries: [FlavorText]
}
