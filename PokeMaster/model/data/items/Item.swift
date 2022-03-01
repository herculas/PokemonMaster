//
//  Item.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Item: Codable, Identifiable {
  let id: Int?
  let name: String?
  let cost: Int?
  let flingPower: Int?
  let flingEffect: NamedAPIResource?                  // ItemFlingEffect
  let attributes: [NamedAPIResource]?                 // [ItemAttribute]
  let category: NamedAPIResource?                     // ItemCategory
  let effectEntries: [VerboseEffect]?
  let flavorTextEntries: [VersionGroupFlavorText]?
  let gameIndices: [GenerationGameIndex]?
  let names: [Name]?
  let sprites: ItemSprites?
  let heldByPokemon: ItemHolderPokemon?
  let babyTriggerFor: APIResource?                    // EvolutionChain
  let machines: [MachineVersionDetail]?
}

struct ItemSprites: Codable {
  let `default`: String?
}

struct ItemHolderPokemon: Codable {
  let pokemon: NamedAPIResource?                      // Pokemon
  let versionDetails: [ItemHolderPokemonVersionDetail]?
}

struct ItemHolderPokemonVersionDetail: Codable {
  let rarity: Int?
  let version: NamedAPIResource?                      // Version
}
