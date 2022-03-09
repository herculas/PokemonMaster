//
//  AbilityViewModel.swift
//  PokeMaster
//
//  Created by 宋睿 on 3/3/2022.
//

import Foundation

struct AbilityViewModel {
  let ability: Ability
  init(ability: Ability) {
    self.ability = ability
  }
}

extension AbilityViewModel: Identifiable {
  var id: Int? { self.ability.id }
}

extension AbilityViewModel {
  var names: [String: String]? { self.ability.names?.languageTextMap }
  var descriptions: [String: String]? { self.ability.flavorTextEntries?.languageTextMap }
}

//extension CoreTypeViewModel {
//  var names: [String: String]? { self.coreType.names?.languageTextMap }
//}
