//
//  Action.swift
//  PokeMaster
//
//  Created by 宋睿 on 24/2/2022.
//

import Foundation

enum PokeAction {
  
  // Actions for settings
  case accountBehaviorButton(enabled: Bool)
  case accountBehaviorDone(result: Result<User, PokeError>)
  
  // Actions for accounts
  case emailValidate(valid: Bool)
  case accountRegister(email: String, password: String)
  case accountLogin(email: String, password: String)
  case accountLogout
  case accountClearCache
  
  // Actions for app display
  case listSelectionToggle(index: Int?)
  case panelPresentationToggle(present: Bool)
  case favoriteToggle(index: Int)
  case safariViewClose
  case pokemonLoad
  case pokemonLoadDone(result: Result<[PokemonViewModel], PokeError>)
  case abilityLoad(pokemon: Pokemon)
  case abilityLoadDone(result: Result<[AbilityViewModel], PokeError>)
  //    case tabSwitch(index: )
}
