////
////  State.swift
////  PokeMaster
////
////  Created by 宋睿 on 24/2/2022.
////
//
//import Foundation
//import Combine
//
//struct PokeState {
//}
//
//extension PokeState {
//  
//  struct PokemonList {
//    
//    struct SelectionState {
//      var expandedIndex: Int? = nil
//      var panelIndex: Int? = nil
//      var panelPresented: Bool = false
//      var radarProgress: Double = 0.0
//      var radarAnimate: Bool = true
//      
//      func isExpanded(_ id: Int) -> Bool {
//        return self.expandedIndex == id
//      }
//    }
//    
//    @FileStorage(directory: .cachesDirectory, name: "pokemons.json")
//    var pokemons: [Int: PokemonViewModel]?
//    
//    @FileStorage(directory: .cachesDirectory, name: "abilities.json")
//    var abilities: [Int: AbilityViewModel]?
//    
//    func getAbilityViewModels(for pokemon: Pokemon) -> [AbilityViewModel]? {
//      guard let abilities = self.abilities else { return nil }
//      return pokemon.abilities.compactMap { abilities[$0.ability.url.extractedId!] }
//    }
//    
//    var pokemonLoading: Bool = false
//    var pokemonLoadingError: PokeError?
//    var selectionState: SelectionState = SelectionState()
//    var favoriteError: PokeError?
//    var searchText: String = ""
//    var isSFViewActive: Bool = false
//  }
//  
//}
//
//extension PokeState {
//  struct MainTab {
//    var selection: Index = .list
//    
//    enum Index: Hashable {
//      case list
//      case settings
//    }
//  }
//}
