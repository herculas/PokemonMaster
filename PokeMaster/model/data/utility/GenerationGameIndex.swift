//
//  GenerationGameIndex.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct GenerationGameIndex: Codable {
  let gameIndex: Int
  let generation: NamedAPIResource          // Generation
}
