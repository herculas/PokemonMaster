//
//  Stat.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Stat: Codable, Identifiable {
  let id: Int
  let name: String
  let gameIndex: Int
  let isBattleOnly: Bool
  let affectingMoves: MoveStatAffectSets
  let affectingNatures: NatureStatAffectSets
  let characteristics: [APIResource]        // [Characteristic]
  let moveDamageClass: NamedAPIResource     // MoveDamageClass
  let names: [Name]
}

struct MoveStatAffectSets: Codable {
  let increase: [MoveStatAffect]
  let decrease: [MoveStatAffect]
}

struct MoveStatAffect: Codable {
  let change: Int
  let move: NamedAPIResource                // Move
}

struct NatureStatAffectSets: Codable {
  let increase: [NamedAPIResource]          // [Nature]
  let decrease: [NamedAPIResource]          // [Nature]
}
