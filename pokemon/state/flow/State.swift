//
//  State.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import Combine

struct AppState {
  var settings = AppState.Settings()
}

extension AppState {
  
  struct Settings {
    
    var accountBehavior = AccountBehavior.login
    var email = ""
    var password = ""
    var passwordConfirm = ""
    
    var showEnName = true
    var sorting = Sorting.id
    var showFavOnly = false
    
    @FileStorage(directory: .documentDirectory, filename: "user.json")
    var loginUser: User?
    
    var loginRequesting = false
    var loginError: AppError?
    
    enum AccountBehavior: CaseIterable {
      case register
      case login
    }
    
    enum Sorting: CaseIterable {
      case id
      case name
      case color
      case favorite
    }
  }
}
