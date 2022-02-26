//
//  Name.swift
//  PokeMaster
//
//  Created by 宋睿 on 25/2/2022.
//

import Foundation

struct Name: Codable, LanguageTextEntry {
  let name: String
  let language: Language
  var text: String { self.name }
}
