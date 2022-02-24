//
//  Species.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI

struct Species: Codable {
    
    let color: Species.Color
    let names: [Species.Name]
    let genera: [Species.Genus]
    let flavorTextEntries: [Species.FlavorTextEntry]
    
    struct Color: Codable {
        let name: Name
        enum Name: String, Codable {
            case black, blue, brown, gray, green, pink, purple, red, white, yellow
            var color: SwiftUI.Color {
                return SwiftUI.Color("pokemon-\(self.rawValue)")
            }
        }
    }
    
    struct Name: Codable, LanguageTextEntry {
        let language: Language
        let name: String
        var text: String { self.name }
    }
    
    struct FlavorTextEntry: Codable, LanguageTextEntry {
        let language: Language
        let flavorText: String
        var text: String { self.flavorText }
    }
    
    struct Genus: Codable, LanguageTextEntry {
        let language: Language
        let genus: String
        var text: String { self.genus }
    }
}
