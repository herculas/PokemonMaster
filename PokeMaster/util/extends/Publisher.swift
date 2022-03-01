//
//  Publisher.swift
//  PokeMaster
//
//  Created by 宋睿 on 1/3/2022.
//

import Foundation
import Combine

extension Publisher where Output == URLSession.DataTaskPublisher.Output {
  func requestJson<T: Decodable>() -> AnyPublisher<T, Error> {
    return tryMap {
      assert(!Thread.isMainThread)
      return $0.data
    }
    .extractUnderlyingError()
    .convertToHttpError()
    .decodeJson(type: T.self)
    .receive(on: DispatchQueue.main)
    .eraseToAnyPublisher()
  }
}

extension Publisher {
  func decodeJson<T: Decodable>(type: T.Type) -> Publishers.Decode<Self, T, JSONDecoder> {
    return decode(type: type, decoder: appDecoder)
  }
}

extension Publisher {
  func convertToHttpError() -> Publishers.MapError<Self, Failure> {
    mapError { error in
      if let nsError = error as NSError?, nsError.code == NetworkError.badNetwork.code {
        return NetworkError.badNetwork as? Failure ?? error
      } else if let nsError = error as NSError?, nsError.code == NetworkError.timeout.code {
        return NetworkError.timeout as? Failure ?? error
      } else if let httpError = error as? NetworkError {
        return httpError as? Failure ?? error
      } else {
        return NetworkError.other(error) as? Failure ?? error
      }
    }
  }
  
  func extractUnderlyingError() -> Publishers.MapError<Self, Failure> {
    mapError { ($0.underlyingError as? Failure) ?? $0 }
  }
}

private extension Error {
  var underlyingError: Error? {
    let nsError = self as NSError
    if nsError.domain == NSURLErrorDomain && nsError.code == -1009 {
      return self
    }
    return nsError.userInfo[NSUnderlyingErrorKey] as? Error
  }
}
