//
//  abilityVM.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import SwiftUI

struct AbilityViewModel: Codable, Identifiable {
    let ability: Ability
    var id: Int { self.ability.id }
    var nameCn: String { self.ability.names.chinese }
    var nameEn: String { self.ability.names.english }
    var descCn: String { self.ability.flavorTextEntries.chinese.newlineRemoved }
    var descEn: String { self.ability.flavorTextEntries.english.newlineRemoved }
    
    init(ability: Ability) {
        self.ability = ability
    }
}

extension AbilityViewModel: CustomStringConvertible {
    var description: String {
        "AbilityViewModel - \(self.id) - \(self.nameCn)"
    }
}
