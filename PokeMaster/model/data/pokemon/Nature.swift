//
//  Nature.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Nature: Codable, Identifiable {
  let id: Int
  let name: String
  let decreasedStat: NamedAPIResource       // Stat
  let increasedStat: NamedAPIResource       // Stat
  let hatesFlavor: NamedAPIResource         // BerryFlavor
  let likesFlavor: NamedAPIResource         // BerryFlavor
  let pokeathlonStatChanges: [NatureStatChange]
  let moveBattleStylePreferences: [MoveBattleStylePreference]
  let names: [Name]
}

struct NatureStatChange: Codable {
  let maxChange: Int
  let pokeathlonStat: NamedAPIResource      // PokeathlonStat
}

struct MoveBattleStylePreference: Codable {
  let lowHpPreference: Int
  let highHpPreference: Int
  let moveBattleStyle: NamedAPIResource     // MoveBattleStyle
}
