//
//  helper.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import SwiftUI

extension Color {
  init(hex: Int, alpha: Double = 1) {
    let components = (
      R: Double((hex >> 16) & 0xff) / 255,
      G: Double((hex >> 08) & 0xff) / 255,
      B: Double((hex >> 00) & 0xff) / 255
    )
    self.init(.sRGB, red: components.R, green: components.G, blue: components.B, opacity: alpha)
  }
}

extension URL {
  var extractedId: Int? {
    Int(lastPathComponent)
  }
}

extension String {
  var newlineRemoved: String {
    return split(separator: "\n").joined(separator: " ")
  }
  
  var isValidEmailAddress: Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
    return emailPredicate.evaluate(with: self)
  }
}

let appDecoder: JSONDecoder = {
  let decoder = JSONDecoder()
  decoder.keyDecodingStrategy = .convertFromSnakeCase
  return decoder
}()

let appEncoder: JSONEncoder = {
  let encoder = JSONEncoder()
  encoder.keyEncodingStrategy = .convertToSnakeCase
  return encoder
}()
