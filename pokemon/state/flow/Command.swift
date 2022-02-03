//
//  Command.swift
//  pokemon
//
//  Created by 宋睿 on 3/2/2022.
//

import Foundation
import Combine

protocol AppCommand {
  func execute(in store: Store)
}

struct LoginCommand: AppCommand {
  let email: String
  let password: String
  
  func execute(in store: Store) {
    let token = SubscriptionToken()
    
    LoginRequest(email: email, password: password)
      .publisher
      .sink(receiveCompletion: { complete in
        if case .failure(let error) = complete {
          store.dispatch(.accountBehaviorDone(result: .failure(error)))
        }
        token.unseal()
      }, receiveValue: { user in
        store.dispatch(.accountBehaviorDone(result: .success(user)))
      })
      .seal(in: token)
  }
}

class SubscriptionToken {
  var cancellable: AnyCancellable?
  func unseal() {
    self.cancellable = nil
  }
}

extension AnyCancellable {
  func seal(in token: SubscriptionToken) {
    token.cancellable = self
  }
}
