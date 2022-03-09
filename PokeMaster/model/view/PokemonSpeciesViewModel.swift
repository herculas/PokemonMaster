//
//  PokemonSpeciesViewModel.swift
//  PokeMaster
//
//  Created by 宋睿 on 2/3/2022.
//

import SwiftUI
import Combine

class PokemonSpeciesViewModel: ObservableObject {
  @Published var pokemonSpecies: PokemonSpecies?
  var token = Set<AnyCancellable>()
}

extension PokemonSpeciesViewModel {
  var pokemonNames: [String: String]? { self.pokemonSpecies?.names?.languageTextMap }
  var genusNames: [String: String]? { self.pokemonSpecies?.genera?.languageTextMap }
  var descriptions: [String: String]? { self.pokemonSpecies?.flavorTextEntries?.languageTextMap }
}

extension PokemonSpeciesViewModel {
  var color: Color {
    switch self.pokemonSpecies?.color?.name {
    case "black": return Color("pokemon-black")
    case "blue": return Color("pokemon-blue")
    case "brown": return Color("pokemon-brown")
    case "gray": return Color("pokemon-gray")
    case "green": return Color("pokemon-green")
    case "pink": return Color("pokemon-pink")
    case "purple": return Color("pokemon-purple")
    case "red": return Color("pokemon-red")
    case "white": return Color("pokemon-white")
    case "yellow": return Color("pokemon-yellow")
    case .none: return Color("pokemon-gray")
    case .some(_): return Color("pokemon-gray")
    }
  }
}

extension PokemonSpeciesViewModel {
  func fetchData(by id: Int) {
    let request = PokemonRequest(session: URLSession.shared)
    request.fetchPokemonSpecies(by: id)
      .sink { _ in
        
      } receiveValue: { pokemonSpecies in
        self.pokemonSpecies = pokemonSpecies
      }
      .store(in: &self.token)
  }
}
