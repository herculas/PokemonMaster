//
//  PokePokemonNetworkTests.swift
//  PokeMasterTests
//
//  Created by 宋睿 on 2/3/2022.
//

import XCTest
import Combine
@testable import PokeMaster

class PokePokemonNetworkTests: XCTestCase {
  
  var request: PokemonRequest!
  var cancellables = Set<AnyCancellable>()
  
  override func setUpWithError() throws {
    self.cancellables = Set<AnyCancellable>()
    self.request = PokemonRequest(session: .shared)
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testFetchPokemonById() throws {
    let expectation = expectation(description: "test complete")
    self.request
      .fetchPokemon(by: 1)
      .sink { complete in
      } receiveValue: { pokemon in
        print(pokemon)
        expectation.fulfill()
      }
      .store(in: &self.cancellables)
    self.wait(for: [expectation], timeout: 3)
  }
  
  func testFetchPokemonList() throws {
    let expectation = expectation(description: "test complete")
    self.request
      .fetchPokemonList()
      .sink { complete in
      } receiveValue: { paged in
        print(paged.count ?? 0)
        print(paged.next ?? "last page")
        print(paged.previous ?? "first page")
        
        expectation.fulfill()
      }
      .store(in: &self.cancellables)
    self.wait(for: [expectation], timeout: 3)
  }
  
}
