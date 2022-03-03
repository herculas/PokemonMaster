//
//  PokemonSpecies.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

//struct Species: Codable {
//  let id: Int
//  let name: String
//  let color: SpeciesColor
//  let names: [Name]
//  let genera: [SpeciesGenus]
//  let flavorTextEntries: [FlavorTextEntry]
//}

struct PokemonSpecies: Codable, Identifiable {
  let id: Int?
  let name: String?
  let order: Int?
  let genderRate: Int?
  let captureRate: Int?
  let baseHappiness: Int?
  let isBaby: Bool?
  let isLegendary: Bool?
  let isMythical: Bool?
  let hatchCounter: Int?
  let hasGenderDifferences: Bool?
  let formsSwitchable: Bool?
  let growthRate: NamedAPIResource?                   // GrowthRate
  let pokedexNumbers: [PokemonSpeciesDexEntry]?
  let eggGroups: [EggGroup]?
  let color: NamedAPIResource?                        // PokemonColor
  let shape: NamedAPIResource?                        // PokemonShape
  let evolvesFromSpecies: NamedAPIResource?           // PokemonSpecies
  let evolutionChain: APIResource?                    // EvolutionChain
  let habitat: NamedAPIResource?                      // PokemonHabitat
  let generation: NamedAPIResource?                   // Generation
  let names: [Name]?
  let palParkEncounters: [PalParkEncounterArea]?
  let flavorTextEntries: [FlavorText]?
  let formDescriptions: [Description]?
  let genera: [Genus]?
  let varieties: [PokemonSpeciesVariety]?
}

//struct SpeciesGenus: Codable, LanguageTextEntry {
//  let language: Language
//  let genus: String
//  var text: String { self.genus }
//}

struct Genus: Codable, LanguageTextScheme {
  let genus: String?
  let language: NamedAPIResource?                     // Language
  var text: String? { self.genus }
}

struct PokemonSpeciesDexEntry: Codable {
  let entryNumber: Int?
  let pokedex: NamedAPIResource?                      // Pokedex
}

struct PalParkEncounterArea: Codable {
  let baseScore: Int?
  let rate: Int?
  let area: NamedAPIResource?                         // PalParkArea
}

struct PokemonSpeciesVariety: Codable {
  let isDefault: Bool?
  let pokemon: NamedAPIResource?                      // Pokemon
}
