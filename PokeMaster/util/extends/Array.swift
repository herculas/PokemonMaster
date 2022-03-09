//
//  Array.swift
//  PokeMaster
//
//  Created by 宋睿 on 23/2/2022.
//

import Combine

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

// Language Mapping
//
// 1      ja-Hrkt     Japanese Hiragana and Katagana
// 2      roomaji     Japanese Romanization
// 3      ko          Korean
// 4      zh-Hant     Chinese Traditional
// 5      fr          French
// 6      de          German
// 7      es          Spanish
// 8      it          Italian
// 9      en          English
// 10     cs          Czech
// 11     ja          Japanese
// 12     zh-Hans     Chinese Simplified
// 13     pt-BR       Brazilian Portuguese

extension Array where Element: LanguageTextScheme {
  
  var languageTextMap: [String: String] {
    var map: [String: String] = [:]
    self.forEach { element in
      if let key = element.language?.name {
        if let value = element.text, !map.keys.contains(value) {
          if key == "zh-Hans" || key == "zh-Hant" {
            map.updateValue(value.carriageReturnRemoved, forKey: key)
          } else {
            map.updateValue(value.carriageReturnRemovedWithSpace, forKey: key)
          }
        }
      }
    }
    return map
  }
  
}
