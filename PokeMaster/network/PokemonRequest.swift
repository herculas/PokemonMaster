////
////  PokemonRequest.swift
////  PokeMaster
////
////  Created by 宋睿 on 23/2/2022.
////
//
//import Foundation
//import Combine
//
//struct PokemonRequest {
//  
//  let id: Int
//  
//  var publisher: AnyPublisher<PokemonViewModel, PokeError> {
//    return PokemonRequest
//      .pokemonPublisher(self.id)
//      .flatMap { PokemonRequest.speciesPublisher($0) }
//      .map { PokemonViewModel(pokemon: $0, species: $1) }
//      .mapError { PokeError.networkFailed($0) }
//      .receive(on: DispatchQueue.main)
//      .eraseToAnyPublisher()
//  }
//  
//  static var allPublisher: AnyPublisher<[PokemonViewModel], PokeError> {
//    return (1...30)
//      .map { PokemonRequest(id: $0).publisher }
//      .zipAll
//  }
//  
//  static private func pokemonPublisher(_ id: Int) -> AnyPublisher<Pokemon, Error> {
//    return URLSession
//      .shared
//      .dataTaskPublisher(for: URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)")!)
//      .map { $0.data }
//      .decode(type: Pokemon.self, decoder: appDecoder)
//      .eraseToAnyPublisher()
//  }
//  
//  static private func speciesPublisher(_ pokemon: Pokemon) -> AnyPublisher<(Pokemon, Species), Error> {
//    return URLSession
//      .shared
//      .dataTaskPublisher(for: pokemon.species.url)
//      .map { $0.data }
//      .decode(type: Species.self, decoder: appDecoder)
//      .map { (pokemon, $0) }
//      .eraseToAnyPublisher()
//  }
//  
//}
