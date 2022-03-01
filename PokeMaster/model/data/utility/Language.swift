//
//  Language.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import Foundation

struct Language: Codable, Identifiable {
  let id: Int?
  let name: String?
  let official: Bool?
  let iso639: String?
  let iso3166: String?
  let names: [Name]?
}

protocol LanguageTextEntry {
  var text: String { get }
  var languageName: String { get }
}

//extension Array where Element: LanguageTextEntry {
//  var japaneseHiraganaAndKatakana: String? {
//    self.first { $0.languageName == "ja-Hrkt" }?.text
//  }
//  var japaneseRomanization: String? {
//    self.first { $0.languageName == "roomaji" }?.text
//  }
//  var korean: String? {
//    self.first { $0.languageName == "ko" }?.text
//  }
//  var traditionalChinese: String? {
//    self.first { $0.languageName == "zh-Hant" }?.text
//  }
//  var french: String? {
//    self.first { $0.languageName == "fr" }?.text
//  }
//  var german: String? {
//    self.first { $0.languageName == "de" }?.text
//  }
//  var spanish: String? {
//    self.first { $0.languageName == "es" }?.text
//  }
//  var italian: String? {
//    self.first { $0.languageName == "it" }?.text
//  }
//  var english: String? {
//    self.first { $0.languageName == "en" }?.text
//  }
//  var czech: String? {
//    self.first { $0.languageName == "cs" }?.text
//  }
//  var japanese: String? {
//    self.first { $0.languageName == "ja" }?.text
//  }
//  var simplifiedChinese: String? {
//    self.first { $0.languageName == "zh-Hans" }?.text
//  }
//  var brazilianPortuguese: String? {
//    self.first { $0.languageName == "pt-BR" }?.text
//  }
//}
