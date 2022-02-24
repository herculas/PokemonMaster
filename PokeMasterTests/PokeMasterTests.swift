//
//  PokeMasterTests.swift
//  PokeMasterTests
//
//  Created by 宋睿 on 22/2/2022.
//

import XCTest
import Combine
@testable import PokeMaster

class PokeMasterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPokemonRequest() throws {
        print("test start!")
        let token = SubscriptionToken()
        let request = PokemonRequest(id: 1).publisher
        request.sink { complete in
            print(complete)
            token.unseal()
        } receiveValue: { vm in
            print(vm)
        }.seal(in: token)
        print("test end!")
        token.unseal()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}