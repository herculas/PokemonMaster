//
//  HttpRequest.swift
//  PokeMaster
//
//  Created by 宋睿 on 28/2/2022.
//

import Foundation
import Combine

struct HttpRequest {
  
  static func getData(from url: URL?, by callback: @escaping (_ response: Data) -> Void) {
    let token = SubscriptionToken()
    URLSession
      .shared
      .dataTaskPublisher(for: url!)
      .map { $0.data }
      .mapError { PokeError.networkFailed($0) }
      .receive(on: DispatchQueue.main)
      .sink(
        receiveCompletion: { complete in
          if case .failure(let error) = complete {
            fatalError("\(error)")
          }
          token.unseal()
        },
        receiveValue: { output in
          callback(output)
        }
      ).seal(in: token)
  }
}
