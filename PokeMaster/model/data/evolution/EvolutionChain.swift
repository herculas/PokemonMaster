//
//  EvolutionChain.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct EvolutionChain: Codable, Identifiable {
  let id: Int
  let babyTriggerItem: NamedAPIResource     // Item
  let chain: ChainLink
}

struct ChainLink: Codable {
  let isBaby: Bool
  let species: NamedAPIResource             // PokemonSpecies
  let evolutionDetials: [EvolutionDetail]
  let evolvesTo: [ChainLink]
}

struct EvolutionDetail: Codable {
  let item: NamedAPIResource                // Item
  let trigger: NamedAPIResource             // EvolutionTrigger
  let gender: Int
  let heldItem: NamedAPIResource            // Item
  let knownMove: NamedAPIResource           // Move
  let knownMoveType: NamedAPIResource       // CoreType
  let location: NamedAPIResource            // Location
  let minLevel: Int
  let minHappiness: Int
  let minBeauty: Int
  let minAffection: Int
  let needsOverworldRain: Bool
  let partySpecies: NamedAPIResource        // PokemonSpecies
  let partyType: NamedAPIResource           // Type
  let relativePhysicalStats: Int
  let timeOfDay: String
  let tradeSpecies: NamedAPIResource        // PokemonSpecies
  let turnUpsideDown: Bool
}
