//
//  FileStorage.swift
//  pokemon
//
//  Created by 宋睿 on 3/2/2022.
//

import Foundation

@propertyWrapper
struct FileStorage<T: Codable> {
  var value: T?
  
  let directory: FileManager.SearchPathDirectory
  let filename: String
  
  init(directory: FileManager.SearchPathDirectory, filename: String) {
    self.value = try? FileUtils.loadJSON(from: directory, filename: filename)
    self.directory = directory
    self.filename = filename
  }
  
  var wrappedValue: T? {
    set {
      self.value = newValue
      if let value = newValue {
        try? FileUtils.writeJSON(value, to: directory, filename: filename)
      } else {
        try? FileUtils.delete(from: directory, filename: filename)
      }
    }
    
    get { self.value }
  }
}
