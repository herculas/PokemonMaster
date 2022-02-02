//
//  mocker.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import Foundation

extension Pokemon {
    static func sample(id: Int) -> Pokemon {
        return FileUtils.loadBundledJSON(file: "pokemon-\(id)")
    }
}

extension PokemonSpecies {
    static func sample(url: URL) -> PokemonSpecies {
        return FileUtils.loadBundledJSON(file: "pokemon-species-\(url.extractedId!)")
    }
}

extension Ability {
    static func sample(id: Int) -> Ability {
        return FileUtils.loadBundledJSON(file: "ability-\(id)")
    }
    static func sample(url: URL) -> Ability {
        return Ability.sample(id: url.extractedId!)
    }
}

extension PokemonViewModel {
    static func sample(id: Int) -> PokemonViewModel {
        let pokemon = Pokemon.sample(id: id)
        let species = PokemonSpecies.sample(url: pokemon.species.url)
        return PokemonViewModel(pokemon: pokemon, species: species)
    }
    
    static var all: [PokemonViewModel] = {
        (1...30).map { id in
            let pokemon = Pokemon.sample(id: id)
            let species = PokemonSpecies.sample(url: pokemon.species.url)
            return PokemonViewModel(pokemon: pokemon, species: species)
        }
    }()
    
    static let samples: [PokemonViewModel] = [
        PokemonViewModel.sample(id: 1),
        PokemonViewModel.sample(id: 2),
        PokemonViewModel.sample(id: 3)
    ]
}

extension AbilityViewModel {
    static func sample(pokemonId: Int) -> [AbilityViewModel] {
        Pokemon.sample(id: pokemonId).abilities.map {
            AbilityViewModel(ability: Ability.sample(url: $0.ability.url))
        }
    }
}
