//
//  User.swift
//  PokeMaster
//
//  Created by 宋睿 on 24/2/2022.
//

import Foundation

struct User: Codable {
    
    var email: String
    var favorites: Set<Int>
    
    func isFavorite(id: Int) -> Bool {
        return self.favorites.contains(id)
    }
}
