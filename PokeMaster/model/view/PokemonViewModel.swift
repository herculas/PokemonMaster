//
//  PokemonVM.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation
import Combine

class PokemonViewModel: ObservableObject {
  @Published var pokemon: Pokemon?
  var token = Set<AnyCancellable>()
}

extension PokemonViewModel: Identifiable {
  var id: Int? { self.pokemon?.id }
}

extension PokemonViewModel {
  var height: String { "\(Double(self.pokemon?.height ?? 0) / 10)m" }
  var weight: String { "\(Double(self.pokemon?.weight ?? 0) / 10)kg"}
  
  //  var types: [Int] { self.pokemon.types?.sorted { $0.slot! < $1.slot! }.map { $0.slot! } ?? [] }
    var iconUrl: URL? { URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(self.id ?? 1).png") }
  //  var detailUrl: URL { URL(string: "https://cn.portal-pokemon.com/play/pokedex/\(String(format: "%03d", self.pokemon.id ?? 1))")! }
}

//extension PokemonViewModel: CustomStringConvertible {
//  var description: String { "PokemonViewModel-\(self.pokemon.id ?? -114514)-\(self.pokemon.name ?? "non-name")" }
//}

extension PokemonViewModel {
  func fetchData(by id: Int) {
    let request = PokemonRequest(session: URLSession.shared)
    request.fetchPokemon(by: id)
      .sink { _ in
        
      } receiveValue: { pokemon in
        self.pokemon = pokemon
      }
      .store(in: &self.token)
  }
}
