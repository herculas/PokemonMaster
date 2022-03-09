//
//  PokemonRequest.swift
//  PokeMaster
//
//  Created by 宋睿 on 23/2/2022.
//

import Foundation
import Combine

struct PokemonRequest: HttpRequest {
  
  var session: URLSession
  var baseUrl: String = "https://pokeapi.co/api/v2"
  
  enum API: APICall {
    case fetchPokemonList
    case fetchPokemonById(Int)
    case fetchPokemonSpeciesById(Int)
    
    var path: String {
      switch self {
      case .fetchPokemonList: return "/pokemon"
      case .fetchPokemonById(let id): return "/pokemon/\(id)"
      case .fetchPokemonSpeciesById(let id): return "/pokemon-species/\(id)"
      }
    }
  }
  
}

extension PokemonRequest {
  func fetchPokemonList(paginationState: PaginationStateEnum = .initial(limit: 20)) -> AnyPublisher<PagedObject, Error> {
    self.callPaginated(endpoint: PokemonRequest.API.fetchPokemonList, paginationState: paginationState)
  }
  
  func fetchPokemon(by id: Int) -> AnyPublisher<Pokemon, Error> {
    self.call(endpoint: PokemonRequest.API.fetchPokemonById(id))
  }
  
  func fetchPokemonSpecies(by id: Int) -> AnyPublisher<PokemonSpecies, Error> {
    self.call(endpoint: PokemonRequest.API.fetchPokemonSpeciesById(id))
  }
}
