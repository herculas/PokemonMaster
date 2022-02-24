//
//  FileStorage.swift
//  PokeMaster
//
//  Created by 宋睿 on 24/2/2022.
//

import Foundation

@propertyWrapper
struct FileStorage<T: Codable> {
    
    var value: T?
    
    let directory: FileManager.SearchPathDirectory
    let name: String
    
    let queue = DispatchQueue(label: (UUID().uuidString))
    
    init(directory: FileManager.SearchPathDirectory, name: String) {
        self.value = try? FileLoader.loadJSON(from: directory, name: name)
        self.directory = directory
        self.name = name
    }
    
    var wrappedValue: T? {
        set {
            let directory = self.directory
            let name = self.name
            self.value = newValue
            self.queue.async {
                if let value = newValue {
                    try? FileWriter.writeJSON(value, to: directory, name: name)
                } else {
                    try? FileWriter.deleteJSON(from: directory, name: name)
                }
            }
        }
        
        get {
            return self.value
        }
    }
}
