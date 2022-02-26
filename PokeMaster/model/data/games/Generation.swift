//
//  Generation.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Generation: Codable {
  let id: Int
  let name: String
  let abilities: [Ability]
  let names: [Name]
//  TODO: mainRegion (Region), moves ([Move]), types ([Type]), versionGroups ([VersionGroup])
  let pokemonSpecies: [Species]
}
