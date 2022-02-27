//
//  VersionEncounterDetail.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct VersionEncounterDetail: Codable {
  let version: NamedAPIResource             // Version
  let maxChance: Int
  let encounterDetails: [Encounter]
}
