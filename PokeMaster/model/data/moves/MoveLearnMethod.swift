//
//  MoveLearnMethod.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct MoveLearnMethod: Codable, Identifiable {
  let id: Int?
  let name: String?
  let descriptions: [Description]?
  let names: [Name]?
  let versionGroups: [NamedAPIResource]?              // [VersionGroup]
}
