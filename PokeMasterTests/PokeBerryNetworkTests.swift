//
//  PokeBerryNetworkTests.swift
//  PokeMasterTests
//
//  Created by 宋睿 on 28/2/2022.
//

import XCTest
import Combine
@testable import PokeMaster

class PokeBerryNetworkTests: XCTestCase {
  
  var request: BerryRequest!
  var cancellables = Set<AnyCancellable>()
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.cancellables = Set<AnyCancellable>()
    self.request = BerryRequest(session: .shared)
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testFetchBerryById() throws {
    let asyncExpectation = expectation(description: "Completion")
    
    self.request
      .fetchBerry(1)
      .sink { complete in
      } receiveValue: { berry in
        print(berry)
        asyncExpectation.fulfill()
      }
      .store(in: &self.cancellables)
    self.wait(for: [asyncExpectation], timeout: 5)
  }
  
  func testFetchBerryList() throws {
    let asyncExpectation = expectation(description: "Completion")
    
    self.request
      .fetchBerryList()
      .sink { complete in
      } receiveValue: { paged in
        print(paged.count ?? 0)
        print(paged.next ?? "last page")
        print(paged.previous ?? "first page")
        print(paged.getOffset(for: .next))
        asyncExpectation.fulfill()
      }
      .store(in: &self.cancellables)
    self.wait(for: [asyncExpectation], timeout: 5)
  }
  
}
