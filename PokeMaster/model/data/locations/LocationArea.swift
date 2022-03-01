//
//  LocationArea.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct LocationArea: Codable, Identifiable {
  let id: Int?
  let name: String?
  let gameIndex: Int?
  let encounterMethodRates: [EncounterMethodRate]?
  let location: NamedAPIResource?                     // Location
  let names: [Name]?
  let pokemonEncounters: [PokemonEncounter]?
}

struct EncounterMethodRate: Codable {
  let encounterMethod: NamedAPIResource?              // EncounterMethod
  let versionDetails: [EncounterVersionDetails]?
}

struct EncounterVersionDetails: Codable {
  let rate: Int?
  let version: NamedAPIResource?                      // Version
}

struct PokemonEncounter: Codable {
  let pokemon: NamedAPIResource?                      // Pokemon
  let versionDetails: [VersionEncounterDetail]?
}
