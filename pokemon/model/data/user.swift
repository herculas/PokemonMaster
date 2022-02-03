//
//  user.swift
//  pokemon
//
//  Created by 宋睿 on 3/2/2022.
//

import Foundation

struct User: Codable {
  var email: String
  var favPokemonIds: Set<Int>
  
  func isFavPokemon(id: Int) -> Bool {
    return self.favPokemonIds.contains(id)
  }
}
