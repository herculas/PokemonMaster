//
//  Language.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Language: Codable, Identifiable {
  let id: Int
  let name: String
  let official: Bool
  let iso639: String
  let iso3166: String
  let names: [Name]
  
//  let url: URL
//  var isSimplifiedChinese: Bool { self.name == "zh-Hans" }
//  var isEnglish: Bool { self.name == "en" }
}

protocol LanguageTextEntry {
  var language: Language { get }
  var text: String { get }
}
