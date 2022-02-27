//
//  Location.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Location: Codable, Identifiable {
  let id: Int
  let name: String
  let region: NamedAPIResource              // Region
  let names: [Name]
  let gameIndices: [GenerationGameIndex]
  let areas: [NamedAPIResource]             // [LocationArea]
}
