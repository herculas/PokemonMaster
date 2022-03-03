//
//  CoreTypeViewModel.swift
//  PokeMaster
//
//  Created by 宋睿 on 2/3/2022.
//

import SwiftUI

struct CoreTypeViewModel {
  let coreType: CoreType
  init(type: CoreType) {
    self.coreType = type
  }
}

extension CoreTypeViewModel {
  var color: Color {
    switch self.coreType.id {
    case 1: return Color(hex: 0xBBBBAC)               // normal
    case 2: return Color(hex: 0xAE5B4A)               // fighting
    case 3: return Color(hex: 0x7199F8)               // flying
    case 4: return Color(hex: 0x9F5A96)               // poison
    case 5: return Color(hex: 0xD8BC65)               // ground
    case 6: return Color(hex: 0xB8AA6F)               // rock
    case 7: return Color(hex: 0xADBA44)               // bug
    case 8: return Color(hex: 0x6667B5)               // ghost
    case 9: return Color(hex: 0xAAAABA)               // steel
    case 10: return Color(hex: 0xEB5435)              // fire
    case 11: return Color(hex: 0x5198F7)              // water
    case 12: return Color(hex: 0x8BC965)              // grass
    case 13: return Color(hex: 0xF7CD55)              // electric
    case 14: return Color(hex: 0xEC6298)              // psychic
    case 15: return Color(hex: 0x90DBFB)              // ice
    case 16: return Color(hex: 0x7469E6)              // dragon
    case 17: return Color(hex: 0x725647)              // dark
    case 18: return Color(hex: 0xF3AFFA)              // fairy
    case .none: return Color(hex: 0x749E91)           // empty id
    case .some(_): return Color(hex: 0x749E91)        // unknown
    }
  }
}
