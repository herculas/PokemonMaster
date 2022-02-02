//
//  language.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import Foundation

struct Language: Codable {
    let name: String
    let url: URL
    
    var isCn: Bool { self.name == "zh-Hans" }
    var isEn: Bool { self.name == "en" }
}

protocol LanguageTextEntry {
    var language: Language { get }
    var text: String { get }
}

extension Array where Element: LanguageTextEntry {
    var chinese: String { first {$0.language.isCn }?.text ?? english }
    var english: String { first {$0.language.isEn }?.text ?? "unknown" }
}
