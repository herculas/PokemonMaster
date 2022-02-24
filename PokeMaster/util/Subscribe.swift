//
//  Subscription.swift
//  PokeMaster
//
//  Created by 宋睿 on 24/2/2022.
//

import Foundation
import Combine

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
