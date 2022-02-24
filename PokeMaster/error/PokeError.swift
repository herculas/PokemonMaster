//
//  PokeError.swift
//  PokeMaster
//
//  Created by 宋睿 on 23/2/2022.
//

import Foundation

enum PokeError: Error, Identifiable {
case yetRegisted
case wrongPassword
case loginRequired
case networkFailed(Error)
case loadFileUrlFailed
    
    var id: String { self.localizedDescription }
}

extension PokeError: LocalizedError {
    var localizedDescription: String {
        switch self {
        case .yetRegisted:
            return "account already registered"
        case .wrongPassword:
            return "account and password inconsistent"
        case .loginRequired:
            return "need account and login"
        case .networkFailed(let error):
            return error.localizedDescription
        case .loadFileUrlFailed:
            return "wrong file URL"
        }
    }
}
