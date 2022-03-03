//
//  MockSample.swift
//  PokeMaster
//
//  Created by 宋睿 on 24/2/2022.
//

import Foundation

extension Pokemon {
  static func sample(id: Int) -> Pokemon {
    return FileLoader.loadBundledJSON(file: "pokemon-\(id)")
  }
}

extension PokemonSpecies {
  static func sample(url: URL) -> PokemonSpecies {
    return FileLoader.loadBundledJSON(file: "species-\(url.extractedId!)")
  }
  
  static func sample(id: Int) -> PokemonSpecies {
    return FileLoader.loadBundledJSON(file: "species-\(id)")
  }
}

extension Ability {
  static func sample(id: Int) -> Ability {
    return FileLoader.loadBundledJSON(file: "ability-\(id)")
  }
  static func sample(url: URL) -> Ability {
    return Ability.sample(id: url.extractedId!)
  }
}

extension PokemonViewModel {
  static func sample(id: Int) -> PokemonViewModel {
    let pokemon = Pokemon.sample(id: id)
    return PokemonViewModel(pokemon: pokemon)
  }
}

extension PokemonSpeciesViewModel {
  static func sample(id: Int) -> PokemonSpeciesViewModel {
    let species = PokemonSpecies.sample(id: id)
    return PokemonSpeciesViewModel(species: species)
  }
}

//extension PokemonViewModel {
//  static func sample(id: Int) -> PokemonViewModel {
//    let pokemon = Pokemon.sample(id: id)
//    let species = PokemonSpecies.sample(url: pokemon.species.url)
//    return PokemonViewModel(pokemon: pokemon, species: species)
//  }
//
//  static var all: [PokemonViewModel] = {
//    (1...30).map { id in
//      let pokemon = Pokemon.sample(id: id)
//      let species = PokemonSpecies.sample(url: pokemon.species.url)
//      return PokemonViewModel(pokemon: pokemon, species: species)
//    }
//  }()
//
//  static let samples: [PokemonViewModel] = [
//    PokemonViewModel.sample(id: 1),
//    PokemonViewModel.sample(id: 2),
//    PokemonViewModel.sample(id: 3)
//  ]
//}
//
//extension AbilityViewModel {
//  static func sample(pokemonId: Int) -> [AbilityViewModel] {
//    Pokemon.sample(id: pokemonId).abilities.map {
//      AbilityViewModel(ability: Ability.sample(url: $0.ability.url))
//    }
//  }
//}
