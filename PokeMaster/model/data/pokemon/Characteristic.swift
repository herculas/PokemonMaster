//
//  Characteristic.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct Characteristic: Codable, Identifiable {
  let id: Int
  let geneModulo: Int
  let possibleValues: [Int]
}
