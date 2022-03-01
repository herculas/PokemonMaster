//
//  VersionGroupFlavorText.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct VersionGroupFlavorText: Codable {
  let text: String?
  let language: NamedAPIResource?                     // Language
  let versionGroup: NamedAPIResource?                 // VersionGroup
}
