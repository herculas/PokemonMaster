//
//  NamedAPIResourceList.swift
//  PokeMaster
//
//  Created by 宋睿 on 1/3/2022.
//

import Foundation

struct NamedAPIResourceList: Codable {
  let count: Int?
  let next: URL?
  let previous: URL?
  let results: [NamedAPIResource]?
}
