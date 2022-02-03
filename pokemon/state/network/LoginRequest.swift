//
//  LoginRequest.swift
//  pokemon
//
//  Created by 宋睿 on 3/2/2022.
//

import Foundation
import Combine

struct LoginRequest {
  let email: String
  let password: String
  
  var publisher: AnyPublisher<User, AppError> {
    Future { promise in
      DispatchQueue.global().asyncAfter(deadline: .now()) {
        if self.password == "password" {
          let user = User(email: self.email, favPokemonIds: [])
          promise(.success(user))
        } else {
          promise(.failure(.wrongPassword))
        }
      }
    }
    .receive(on: DispatchQueue.main)
    .eraseToAnyPublisher()
  }
}
