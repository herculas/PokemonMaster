//
//  Name.swift
//  PokeMaster
//
//  Created by 宋睿 on 25/2/2022.
//

import Foundation

struct Name: Codable, LanguageTextEntry {
  let name: String?
  let language: NamedAPIResource?                     // Language
  
  var text: String { self.name ?? "non-name" }
  var languageName: String { self.language?.name ?? "na" }
}
