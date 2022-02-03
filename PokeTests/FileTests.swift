//
//  FileTests.swift
//  PokeTests
//
//  Created by 宋睿 on 1/2/2022.
//

import XCTest
@testable import pokemon

class FileTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testLoadBundledJSON() throws {
    let pokemon: Pokemon = FileUtils.loadBundledJSON(file: "pokemon-\(1)")
    print(pokemon)
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
