//
//  Pagination.swift
//  PokeMaster
//
//  Created by 宋睿 on 1/3/2022.
//

import Foundation

enum PaginationStateEnum {
  case initial(limit: Int)
  case continuing(PagedObject, PaginationRelation)
}

enum PaginationRelation {
  case first
  case last
  case next
  case previous
  case page(Int)
}

class PagedObject {
  let count: Int?
  let next: String?
  let previous: String?
  let results: [NamedAPIResource]?
  
  var current: String = ""
  var limit: Int = 0
  var offset: Int = 0
  
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.count = try container.decodeIfPresent(Int.self, forKey: .count)
    self.next = try container.decodeIfPresent(String.self, forKey: .next)
    self.previous = try container.decodeIfPresent(String.self, forKey: .previous)
    self.results = try container.decodeIfPresent([NamedAPIResource].self, forKey: .results)
  }
}

extension PagedObject: Codable {
  enum CodingKeys: String, CodingKey {
    case count
    case next
    case previous
    case results
  }
}

extension PagedObject {
  var pages: Int {
    guard let count = self.count, self.limit != 0 else { return 0 }
    return Int((Float(count) / Float(self.limit)).rounded(.up))
  }
  var currentPage: Int {
    guard self.limit != 0 else { return 0 }
    return self.offset / self.limit
  }
  var hasNext: Bool { self.next != nil }
  var hasPrevious: Bool { self.previous != nil }
}

extension PagedObject {
  
  func update(with paginationState: PaginationStateEnum, currentUrl: String) {
    switch paginationState {
    case .initial(let limit):
      self.offset = 0
      self.limit = limit
    case .continuing(let pagedObject, let relation):
      self.offset = pagedObject.getOffset(for: relation)
      self.limit = pagedObject.limit
    }
    self.current = currentUrl
  }
  
  func getOffset(for relation: PaginationRelation) -> Int {
    switch relation {
    case .first:
      return 0
    case .last:
      guard let count = self.count, self.limit != 0 else { return 0 }
      let remainingCount = count % self.limit
      return count - remainingCount
    case .next:
      return min(self.offset + self.limit, self.getOffset(for: .last))
    case .previous:
      return max(self.offset - self.limit, 0)
    case .page(let page):
      guard page >= 0 else { return 0 }
      guard page <= self.pages else { return self.getOffset(for: .last) }
      return page * self.limit
    }
  }
  
  func getPageLink(for relation: PaginationRelation) -> String? {
    switch relation {
    case .first:
      guard var url = URL(string: self.current) else { return nil }
      url.appendQuery(parameters: ["offset" : "0"])
      return url.absoluteString
    case .last:
      guard var url = URL(string: self.current) else { return nil }
      url.appendQuery(parameters: ["offset": String(getOffset(for: .last))])
      return url.absoluteString
    case .next:
      return self.next
    case .previous:
      return self.previous
    case .page(let page):
      guard var url = URL(string: self.current) else { return nil }
      url.appendQuery(parameters: ["offset": String(getOffset(for: .page(page)))])
      return url.absoluteString
    }
  }
}
