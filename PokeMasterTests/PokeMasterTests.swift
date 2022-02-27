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
  
  func testDataModels() throws {
    let pokemon1: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-1")
    let pokemon2: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-2")
    let pokemon3: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-3")
    let pokemon4: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-4")
    let pokemon5: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-5")
    let pokemon6: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-6")
    let pokemon7: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-7")
    let pokemon8: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-8")
    let pokemon9: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-9")
    let pokemon10: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-10")
    
    print(pokemon1)
    print(pokemon2)
    print(pokemon3)
    print(pokemon4)
    print(pokemon5)
    print(pokemon6)
    print(pokemon7)
    print(pokemon8)
    print(pokemon9)
    print(pokemon10)
  }
  
  func testBerryDataModels() throws {
    let berry1: Berry = FileLoader.loadBundledJSON(file: "berry-1")
    let berryFirmness1: BerryFirmness = FileLoader.loadBundledJSON(file: "berry-firmness-1")
    let berryFlavor1: BerryFlavor = FileLoader.loadBundledJSON(file: "berry-flavor-1")
    
    print(berry1)
    print(berryFirmness1)
    print(berryFlavor1)
  }
  
  func testContestDataModels() throws {
    let contestEffect: ContestEffect = FileLoader.loadBundledJSON(file: "contest-effect-1")
    let contestType: ContestType = FileLoader.loadBundledJSON(file: "contest-type-1")
    let superContestEffect: SuperContestEffect = FileLoader.loadBundledJSON(file: "super-contest-effect-1")
    
    print(contestEffect)
    print(contestType)
    print(superContestEffect)
  }
  
  func testEncounterDataModels() throws {
    let encounterCondition: EncounterCondition = FileLoader.loadBundledJSON(file: "encounter-condition-1")
    let encounterConditionValue: EncounterConditionValue = FileLoader.loadBundledJSON(file: "encounter-condition-value-1")
    let encounterMethod: EncounterMethod = FileLoader.loadBundledJSON(file: "encounter-method-1")
    
    print(encounterCondition)
    print(encounterConditionValue)
    print(encounterMethod)
  }
  
  func testEvolutionDataModels() throws {
    let evolutionChain: EvolutionChain = FileLoader.loadBundledJSON(file: "evolution-chain-1")
    let evolutionTrigger: EvolutionTrigger = FileLoader.loadBundledJSON(file: "evolution-trigger-1")
    
    print(evolutionChain)
    print(evolutionTrigger)
  }
  
  func testPokemonDataModels() throws {
    let pokemon: Pokemon = FileLoader.loadBundledJSON(file: "pokemon-1")
    let ability: Ability = FileLoader.loadBundledJSON(file: "ability-34")
    
    print(pokemon)
    print(ability)
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
