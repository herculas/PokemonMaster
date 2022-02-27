//
//  Encounter.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Encounter: Codable {
  let minLevel: Int
  let maxLevel: Int
  let conditionValues: [NamedAPIResource]   // [EncounterConditionValue]
  let chance: Int
  let method: NamedAPIResource              // EncounterMethod
}
