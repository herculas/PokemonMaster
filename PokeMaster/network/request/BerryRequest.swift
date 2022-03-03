//
//  BerryRequest.swift
//  PokeMaster
//
//  Created by 宋睿 on 1/3/2022.
//

import Foundation
import Combine

struct BerryRequest: HttpRequest {
  
  var session: URLSession
  var baseUrl: String = "https://pokeapi.co/api/v2"
  
  enum API: APICall {
    case fetchBerryList
    case fetchBerryById(Int)
    
    var path: String {
      switch self {
      case .fetchBerryList:
        return "/berry"
      case .fetchBerryById(let id):
        return "/berry/\(id)"
      }
    }
  }
}

extension BerryRequest {
  func fetchBerryList(paginationState: PaginationStateEnum = .initial(limit: 20)) -> AnyPublisher<PagedObject, Error> {
    self.callPaginated(endpoint: BerryRequest.API.fetchBerryList, paginationState: paginationState)
  }
  
  func fetchBerry(_ id: Int) -> AnyPublisher<Berry, Error> {
    self.call(endpoint: BerryRequest.API.fetchBerryById(id))
  }
}
