//
//  Version.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Version: Codable, Identifiable {
  let id: Int
  let name: String
  let names: [Name]
  let versionGroup: NamedAPIResource        // VersionGroup
}
