//
//  extend.swift
//  PokeMaster
//
//  Created by 宋睿 on 23/2/2022.
//

import SwiftUI
import Combine

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

extension URL {
  var extractedId: Int? { Int(self.lastPathComponent) }
}

extension String {
  var newlineRemoved: String { split(separator: "\n").joined(separator: " ") }
  var isEmailAddress: Bool {
    let regularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", regularExpression)
    return emailPredicate.evaluate(with: self)
  }
}

extension Array where Element: Publisher {
  var zipAll: AnyPublisher<[Element.Output], Element.Failure> {
    let initial = Just([Element.Output]())
      .setFailureType(to: Element.Failure.self)
      .eraseToAnyPublisher()
    return reduce(initial) { partialResult, publisher in
      partialResult
        .zip(publisher) { $0 + [$1] }
        .eraseToAnyPublisher()
    }
  }
}

extension Array where Element: LanguageTextEntry {
  var simplifiedChinese: String {
    self.first { $0.language.isSimplifiedChinese }?.text ?? english
  }
  var english: String {
    self.first { $0.language.isEnglish }?.text ?? "Unknown"
  }
}
