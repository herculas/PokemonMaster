//
//  EncounterConditionValue.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct EncounterConditionValue: Codable, Identifiable {
  let id: Int
  let name: String
  let condition: NamedAPIResource           // EncounterCondition
  let names: [Name]
}
