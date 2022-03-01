//
//  URL.swift
//  PokeMaster
//
//  Created by 宋睿 on 1/3/2022.
//

import Foundation

extension URL {
  var extractedId: Int? { Int(self.lastPathComponent) }
}

extension URL {
  
  mutating func appendQueryParameter(key: String, value: String?) {
    guard var components = URLComponents(url: self, resolvingAgainstBaseURL: false) else { return }
    var queryItems = components.queryItems ?? [URLQueryItem]()
    let matchedItems = queryItems.enumerated().filter { $0.element.name == key }
    if matchedItems.count > 1 {
      if let value = value {
        matchedItems.reversed().forEach { queryItems.remove(at: $0.offset) }
        queryItems.append(URLQueryItem(name: key, value: value))
      } else {
        matchedItems.reversed().forEach { queryItems.remove(at: $0.offset) }
      }
    } else if let item = matchedItems.first {
      if let value = value {
        queryItems[item.offset] = URLQueryItem(name: key, value: value)
      } else {
        queryItems.remove(at: item.offset)
      }
    } else if let value = value {
      queryItems.append(URLQueryItem(name: key, value: value))
    }
    components.queryItems = queryItems
    self = components.url!
  }
  
  mutating func appendQuery(parameters: [String: String]) {
    parameters.forEach { self.appendQueryParameter(key: $0.key, value: $0.value) }
  }
  
  mutating func removeQueryParameter(_ key: String) {
    self.appendQueryParameter(key: key, value: nil)
  }
  
  func compareComponents(_ url: URL) -> Bool {
    guard let componentLhs = URLComponents(url: self, resolvingAgainstBaseURL: false),
          let componentRhs = URLComponents(url: url, resolvingAgainstBaseURL: false) else { return false }
    return componentLhs.scheme == componentRhs.scheme &&
      componentLhs.host == componentRhs.host &&
      componentLhs.path == componentRhs.path &&
      componentLhs.queryItems?.enumerated().compactMap { $0.element.name }.sorted() == componentRhs.queryItems?.enumerated().compactMap { $0.element.name }.sorted() &&
      componentLhs.queryItems?.enumerated().compactMap { $0.element.value }.sorted() == componentRhs.queryItems?.enumerated().compactMap { $0.element.value }.sorted()
  }
  
}
