//
//  AbilityView.swift
//  PokeMaster
//
//  Created by 宋睿 on 24/2/2022.
//

import SwiftUI

struct AbilityViewModel: Codable, Identifiable {
  
  let ability: Ability
  
  init(ability: Ability) {
    self.ability = ability
  }
  
  var id: Int { self.ability.id }
  var nameSimplifiedChinese: String { self.ability.names.simplifiedChinese }
  var nameEnglish: String { self.ability.names.english }
  var descriptionSimplifiedChinese: String { self.ability.flavorTextEntries.simplifiedChinese.newlineRemoved }
  var descriptionEnglish: String { self.ability.flavorTextEntries.english.newlineRemoved }
}

extension AbilityViewModel: CustomStringConvertible {
  var description: String {
    "AbilityViewModel - \(self.id) - \(self.nameSimplifiedChinese) - \(self.nameEnglish)"
  }
}
