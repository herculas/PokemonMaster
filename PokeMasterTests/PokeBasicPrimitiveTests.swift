//
//  PokeBasicPrimitiveTests.swift
//  PokeMasterTests
//
//  Created by 宋睿 on 2/3/2022.
//

import XCTest
@testable import PokeMaster

class PokeBasicPrimitiveTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func testLanguageArray() throws {
    let names: [Name] = [
      Name(name: "フシギダネ", language: NamedAPIResource(name: "ja-Hrkt", url: URL(string: "https://pokeapi.co/api/v2/language/1/"))),
      Name(name: "Fushigidane", language: NamedAPIResource(name: "roomaji", url: URL(string: "https://pokeapi.co/api/v2/language/2/"))),
      Name(name: "이상해씨", language: NamedAPIResource(name: "ko", url: URL(string: "https://pokeapi.co/api/v2/language/3/"))),
      Name(name: "妙蛙種子", language: NamedAPIResource(name: "zh-Hant", url: URL(string: "https://pokeapi.co/api/v2/language/4/"))),
      Name(name: "Bulbizarre", language: NamedAPIResource(name: "fr", url: URL(string: "https://pokeapi.co/api/v2/language/5/"))),
      Name(name: "Bisasam", language: NamedAPIResource(name: "de", url: URL(string: "https://pokeapi.co/api/v2/language/6/"))),
      Name(name: "Bulbasaur", language: NamedAPIResource(name: "es", url: URL(string: "https://pokeapi.co/api/v2/language/7/"))),
      Name(name: "Bulbasaur", language: NamedAPIResource(name: "it", url: URL(string: "https://pokeapi.co/api/v2/language/8/"))),
      Name(name: "Bulbasaur", language: NamedAPIResource(name: "en", url: URL(string: "https://pokeapi.co/api/v2/language/9/"))),
      Name(name: "フシギダネ", language: NamedAPIResource(name: "ja", url: URL(string: "https://pokeapi.co/api/v2/language/11/"))),
      Name(name: "妙蛙种子", language: NamedAPIResource(name: "zh-Hans", url: URL(string: "https://pokeapi.co/api/v2/language/12/")))
    ]
    print(names.languageTextMap)
  }
  
}
