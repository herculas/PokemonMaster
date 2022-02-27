////
////  AbilitiesRequest.swift
////  PokeMaster
////
////  Created by 宋睿 on 23/2/2022.
////
//
//import Foundation
//import Combine
//
//struct AbilityRequest {
//  
//  let ability: PokemonAbilityEntry
//  
//  var publisher: AnyPublisher<AbilityViewModel, PokeError> {
//    URLSession
//      .shared
//      .dataTaskPublisher(for: self.ability.ability.url)
//      .map { $0.data }
//      .decode(type: Ability.self, decoder: appDecoder)
//      .map { AbilityViewModel(ability: $0) }
//      .mapError { PokeError.networkFailed($0) }
//      .receive(on: DispatchQueue.main)
//      .eraseToAnyPublisher()
//  }
//}
