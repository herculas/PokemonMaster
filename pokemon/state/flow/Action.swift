//
//  Action.swift
//  pokemon
//
//  Created by 宋睿 on 3/2/2022.
//

import Foundation

enum AppAction {
  case login(email: String, password: String)
  case accountBehaviorDone(result: Result<User, AppError>)
}
 
