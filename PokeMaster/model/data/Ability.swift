//
//  Ability.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Ability: Codable {
    let id: Int
    let names: [Ability.Name]
    let flavorTextEntries: [Ability.FlavorTextEntry]
    
    struct Name: Codable, LanguageTextEntry {
        let language: Language
        let name: String
        var text: String { self.name }
    }
    struct FlavorTextEntry: Codable, LanguageTextEntry {
        let language: Language
        let flavor: String
        var text: String { self.flavor }
    }
}
