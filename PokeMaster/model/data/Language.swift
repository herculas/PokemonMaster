//
//  Language.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Language: Codable {
    let name: String
    let url: URL
    
    var isSimplifiedChinese: Bool { self.name == "zh-Hans" }
    var isEnglish: Bool { self.name == "en" }
}

protocol LanguageTextEntry {
    var language: Language { get }
    var text: String { get }
}

extension Array where Element: LanguageTextEntry {
    var simplifiedChinese: String {
        self.first { $0.language.isSimplifiedChinese }?.text ?? english
    }
    var english: String {
        self.first { $0.language.isEnglish }?.text ?? "Unknown"
    }
}
