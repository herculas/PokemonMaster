//
//  PokeDataModelTests.swift
//  PokeMasterTests
//
//  Created by 宋睿 on 28/2/2022.
//

import XCTest
@testable import PokeMaster

class PokeDataModelTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testPokemonModels() throws {
    var pokemons: [Pokemon] = []
    for iter in (1...30) {
      pokemons.append(FileLoader.loadBundledJSON(file: "pokemon-\(iter)"))
    }
    
    for iter in (1...30) {
      print(pokemons[iter - 1])
    }
  }
  
  func testBerryModels() throws {
    let berry1: Berry = FileLoader.loadBundledJSON(file: "berry-1")
    let berryFirmness1: BerryFirmness = FileLoader.loadBundledJSON(file: "berry-firmness-1")
    let berryFlavor1: BerryFlavor = FileLoader.loadBundledJSON(file: "berry-flavor-1")
    
    print(berry1)
    print(berryFirmness1)
    print(berryFlavor1)
  }
  
  func testContestModels() throws {
    let contestEffect: ContestEffect = FileLoader.loadBundledJSON(file: "contest-effect-1")
    let contestType: ContestType = FileLoader.loadBundledJSON(file: "contest-type-1")
    let superContestEffect: SuperContestEffect = FileLoader.loadBundledJSON(file: "super-contest-effect-1")
    
    print(contestEffect)
    print(contestType)
    print(superContestEffect)
  }
  
  func testEncounterModels() throws {
    let encounterCondition: EncounterCondition = FileLoader.loadBundledJSON(file: "encounter-condition-1")
    let encounterConditionValue: EncounterConditionValue = FileLoader.loadBundledJSON(file: "encounter-condition-value-1")
    let encounterMethod: EncounterMethod = FileLoader.loadBundledJSON(file: "encounter-method-1")
    
    print(encounterCondition)
    print(encounterConditionValue)
    print(encounterMethod)
  }
  
  func testEvolutionModels() throws {
    let evolutionChain: EvolutionChain = FileLoader.loadBundledJSON(file: "evolution-chain-1")
    let evolutionTrigger: EvolutionTrigger = FileLoader.loadBundledJSON(file: "evolution-trigger-1")
    
    print(evolutionChain)
    print(evolutionTrigger)
  }
  
  func testPaginationModels() throws {
    let pagination: PagedObject = FileLoader.loadBundledJSON(file: "pokemon-pagination-1")
    print(pagination.count!)
    print(pagination.next ?? "last page")
    print(pagination.previous ?? "first page")
//    print(pagination.results ?? [])
  }
  
}
