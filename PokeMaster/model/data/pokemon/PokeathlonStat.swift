//
//  PokeathlonStat.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct PokeathlonStat: Codable, Identifiable {
  let id: Int
  let name: String
  let names: [Name]
  let affectingNatures: NaturePokeathlonStatAffectSets
}

struct NaturePokeathlonStatAffectSets: Codable {
  let increase: [NaturePokeathlonStatAffect]
  let decrease: [NaturePokeathlonStatAffect]
}

struct NaturePokeathlonStatAffect: Codable {
  let maxChange: Int
  let nature: NamedAPIResource              // Nature
}
