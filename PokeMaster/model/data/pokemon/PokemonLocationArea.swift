//
//  PokemonLocationArea.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct LocationAreaEncounter: Codable {
  let locationArea: NamedAPIResource?                 // LocationArea
  let versionDetails: [VersionEncounterDetail]?
}
