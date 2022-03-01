//
//  HttpRequest.swift
//  PokeMaster
//
//  Created by 宋睿 on 28/2/2022.
//

import Foundation
import Combine

public protocol HttpRequest {
  var session: URLSession { get }
  var baseUrl: String { get }
}

extension HttpRequest {
  func call<T: Decodable>(endpoint: APICall) -> AnyPublisher<T, Error> {
    do {
      let request = try endpoint.createGetRequest(baseUrl: self.baseUrl)
      return self.session.dataTaskPublisher(for: request).requestJson()
    } catch let error {
      return Fail<T, Error>(error: error).eraseToAnyPublisher()
    }
  }
  
  func callPaginated(endpoint: APICall, paginationState: PaginationStateEnum) -> AnyPublisher<PagedObject, Error> {
    do {
      let request = try endpoint.createGetRequest(baseUrl: self.baseUrl, paginationState: paginationState)
      return self.session.dataTaskPublisher(for: request).requestJson()
    } catch let error {
      return Fail<PagedObject, Error>(error: error).eraseToAnyPublisher()
    }
  }
}
