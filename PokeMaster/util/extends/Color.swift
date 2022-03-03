//
//  Color.swift
//  PokeMaster
//
//  Created by 宋睿 on 2/3/2022.
//

import SwiftUI

extension Color {
  init(hex: Int, alpha: Double = 1) {
    let components = (
      red: Double((hex >> 16) & 0xff) / 255,
      green: Double((hex >> 08) & 0xff) / 255,
      blue: Double((hex >> 00) & 0xff) / 255
    )
    self.init(.sRGB, red: components.red, green: components.green, blue: components.blue, opacity: alpha)
  }
}
