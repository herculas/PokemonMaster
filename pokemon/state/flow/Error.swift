//
//  Error.swift
//  pokemon
//
//  Created by 宋睿 on 3/2/2022.
//

import Foundation

enum AppError: Error, Identifiable {
  var id: String {
    localizedDescription
  }
  
  case wrongPassword
}

extension AppError: LocalizedError {
  var localizedDescription: String {
    switch self {
    case .wrongPassword: return "密码错误"
    }
  }
}
