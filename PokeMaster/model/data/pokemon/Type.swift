//
//  Type.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct CoreType: Codable, Identifiable {
  let id: Int?
  let name: String?
  let damageRelations: TypeRelations?
  let pastDamageRelations: [TypeRelationsPast]?
  let gameIndices: [GenerationGameIndex]?
  let generation: NamedAPIResource?                   // Generation
  let moveDamageClass: NamedAPIResource?              // MoveDamageClass
  let names: [Name]?
  let pokemon: [TypePokemon]?
  let moves: [NamedAPIResource]?                      // [Move]
}

struct TypePokemon: Codable {
  let slot: Int?
  let pokemon: NamedAPIResource?                      // Pokemon
}

struct TypeRelations: Codable {
  let noDamageTo: [NamedAPIResource]?                 // [CoreType]
  let halfDamageTo: [NamedAPIResource]?               // [CoreType]
  let doubleDamageTo: [NamedAPIResource]?             // [CoreType]
  let noDamageFrom: [NamedAPIResource]?               // [CoreType]
  let halfDamageFrom: [NamedAPIResource]?             // [CoreType]
  let doubleDamageFrom: [NamedAPIResource]?           // [CoreType]
}

struct TypeRelationsPast: Codable {
  let generation: NamedAPIResource?                   // Generation
  let damageRelations: TypeRelations?
}
