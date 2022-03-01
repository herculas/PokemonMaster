//
//  Move.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Move: Codable, Identifiable {
  let id: Int?
  let name: String?
  let accuracy: Int?
  let effectChance: Int?
  let pp: Int?
  let priority: Int?
  let power: Int?
  let contestCombos: ContestComboSets?
  let contestType: NamedAPIResource?                  // ContestType
  let contestEffect: APIResource?                     // ContestEffect
  let damageClass: NamedAPIResource?                  // MoveDamageClass
  let effectEntries: [VerboseEffect]?
  let effectChanges: AbilityEffectChange?
  let learnedByPokemon: [NamedAPIResource]?           // [Pokemon]
  let flavorTextEntries: [MoveFlavorText]?
  let generation: NamedAPIResource?                   // Generation
  let machines: [MachineVersionDetail]?
  let meta: MoveMetaData?
  let names: [Name]?
  let pastValues: [PastMoveStatValues]?
  let statChanges: [MoveStatChange]?
  let superContestEffect: APIResource?                // SuperContestEffect
  let target: NamedAPIResource?                       // MoveTarget
  let type: NamedAPIResource?                         // CoreType
}

struct ContestComboSets: Codable {
  let normal: ContestComboDetail?
  let `super`: ContestComboDetail?
}

struct ContestComboDetail: Codable {
  let useBefore: NamedAPIResource?                    // Move
  let useAfter: NamedAPIResource?                     // Move
}

struct MoveFlavorText: Codable {
  let flavorText: String?
  let language: NamedAPIResource?                     // Language
  let versionGroup: NamedAPIResource?                 // VersionGroup
}

struct MoveMetaData: Codable {
  let ailment: NamedAPIResource?                      // MoveAilment
  let category: NamedAPIResource?                     // MoveCategory
  let minHits: Int?
  let maxHits: Int?
  let minTurns: Int?
  let maxTurns: Int?
  let drain: Int?
  let healing: Int?
  let critRate: Int?
  let ailmentChance: Int?
  let flinchChance: Int?
  let statChance: Int?
}

struct MoveStatChange: Codable {
  let change: Int?
  let stat: NamedAPIResource?                         // Stat
}

struct PastMoveStatValues: Codable {
  let accuracy: Int?
  let effectChance: Int?
  let power: Int?
  let pp: Int?
  let effectEntries: [VerboseEffect]?
  let type: NamedAPIResource?                         // CoreType
  let versionGroup: NamedAPIResource?                 // VersionGroup
}
