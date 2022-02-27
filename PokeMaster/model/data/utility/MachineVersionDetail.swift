//
//  MachineVersionDetail.swift
//  PokeMaster
//
//  Created by 宋睿 on 26/2/2022.
//

import Foundation

struct MachineVersionDetail: Codable {
  let machine: APIResource                  // Machine
  let versionGroup: NamedAPIResource        // VersionGroup
}
