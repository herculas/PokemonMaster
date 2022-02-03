//
//  file.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import Foundation

// TODO: Test Kit
enum FileUtils {
  
  static func loadJSON<T: Decodable>(from url: URL) throws -> T {
    let data = try Data(contentsOf: url)
    return try appDecoder.decode(T.self, from: data)
  }
  
  static func loadJSON<T: Decodable>(from directory: FileManager.SearchPathDirectory, filename: String) throws -> T {
    let url = FileManager.default.urls(for: directory, in: .userDomainMask).first!
    return try loadJSON(from: url.appendingPathComponent(filename))
  }
  
  static func loadBundledJSON<T: Decodable>(file: String) -> T {
    guard let url = Bundle.main.url(forResource: file, withExtension: "json") else {
      fatalError("resource not found: \(file)")
    }
    return try! loadJSON(from: url)
  }
  
  static func writeJSON<T: Encodable>(_ value: T, to url: URL) throws {
    let data = try appEncoder.encode(value)
    try data.write(to: url)
  }
  
  static func writeJSON<T: Encodable>(_ value: T, to directory: FileManager.SearchPathDirectory, filename: String) throws {
    guard let url = FileManager.default.urls(for: directory, in: .userDomainMask).first else {
      return
    }
    try writeJSON(value, to: url.appendingPathComponent(filename))
  }
  
  static func delete(from directory: FileManager.SearchPathDirectory, filename: String) throws {
    guard let url = FileManager.default.urls(for: directory, in: .userDomainMask).first else {
      return
    }
    try FileManager.default.removeItem(at: url.appendingPathComponent(filename))
  }
}
