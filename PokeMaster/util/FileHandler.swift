//
//  file.swift
//  PokeMaster
//
//  Created by 宋睿 on 23/2/2022.
//

import Foundation

struct FileLoader {
  
  static func loadJSON<T: Decodable>(from url: URL) throws -> T {
    let data = try Data(contentsOf: url)
    return try appDecoder.decode(T.self, from: data)
  }
  
  static func loadJSON<T: Decodable>(from directory: FileManager.SearchPathDirectory, name: String) throws -> T {
    guard let url = FileManager.default.urls(for: directory, in: .userDomainMask).first else {
      throw PokeError.loadFileUrlFailed
    }
    return try loadJSON(from: url.appendingPathComponent(name))
  }
  
  static func loadBundledJSON<T: Decodable>(file: String) -> T {
    guard let url = Bundle.main.url(forResource: file, withExtension: "json") else {
      fatalError("resource not found: \(PokeError.loadFileUrlFailed)")
    }
    return try! loadJSON(from: url)
  }
  
}

struct FileWriter {
  
  static func writeJSON<T: Encodable>(_ value: T, to url: URL) throws {
    let data = try appEncoder.encode(value)
    try data.write(to: url)
  }
  
  static func writeJSON<T: Encodable>(_ value: T, to directory: FileManager.SearchPathDirectory, name: String) throws {
    guard let url = FileManager.default.urls(for: directory, in: .userDomainMask).first else {
      throw PokeError.loadFileUrlFailed
    }
    try writeJSON(value, to: url.appendingPathComponent(name))
  }
  
  static func deleteJSON(from directory: FileManager.SearchPathDirectory, name: String) throws {
    guard let url = FileManager.default.urls(for: directory, in: .userDomainMask).first else {
      throw PokeError.loadFileUrlFailed
    }
    try FileManager.default.removeItem(at: url.appendingPathComponent(name))
  }
  
}
