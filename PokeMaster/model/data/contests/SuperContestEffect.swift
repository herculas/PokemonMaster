//
//  SuperContestEffect.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct SuperContestEffect: Codable, Identifiable {
  let id: Int
  let appeal: Int
  let flavorTextEntries: [FlavorText]
  let moves: [NamedAPIResource]             // [Move]
}
