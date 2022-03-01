//
//  APICall.swift
//  PokeMaster
//
//  Created by 宋睿 on 1/3/2022.
//

import Foundation

protocol APICall {
  var path: String { get }
}

extension APICall {
  
  func createUrl(baseUrl: String) -> URL? {
    return URL(string: baseUrl + self.path)
  }
  
  func createUrl(baseUrl: String, paginationState: PaginationStateEnum) -> URL? {
    guard var url = self.createUrl(baseUrl: baseUrl) else { return nil }
    var pageLimit = 0
    var offset = 0
    
    switch paginationState {
    case .initial(let limit):
      pageLimit = limit
    case .continuing(let paginatedResult, let relation):
      pageLimit = paginatedResult.limit
      offset = paginatedResult.getOffset(for: relation)
    }
    
    url.appendQuery(parameters: ["limit": String(pageLimit), "offset": String(offset)])
    return url
  }
  
  func createGetRequest(url: URL) -> URLRequest {
    var request = URLRequest(url: url)
    request.httpMethod = "get"
    return request
  }
  
  func createGetRequest(baseUrl: String) throws -> URLRequest {
    guard let url = self.createUrl(baseUrl: baseUrl) else { throw NetworkError.invalidRequest }
    return self.createGetRequest(url: url)
  }

  func createGetRequest(baseUrl: String, paginationState: PaginationStateEnum) throws -> URLRequest {
    guard let url = self.createUrl(baseUrl: baseUrl, paginationState: paginationState) else { throw NetworkError.invalidRequest }
    return self.createGetRequest(url: url)
  }
}
