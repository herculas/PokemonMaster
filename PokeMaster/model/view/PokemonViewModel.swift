//
//  PokemonVM.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI

struct PokemonViewModel: Codable, Identifiable {
    
    var id: Int { self.pokemon.id }

    let pokemon: Pokemon
    let species: Species
    
    init(pokemon: Pokemon, species: Species) {
        self.pokemon = pokemon
        self.species = species
    }
    
    var color: Color { self.species.color.name.color }
    var height: String { "\(Double(self.pokemon.height) / 10)m" }
    var weight: String { "\(Double(self.pokemon.weight) / 10)kg" }
    var nameChinese: String { self.species.names.simplifiedChinese }
    var nameEnglish: String { self.species.names.english }
    var genusChinese: String { self.species.genera.simplifiedChinese }
    var genusEnglish: String { self.species.genera.english }
    
    var types: [PokemonViewModel.`Type`] { self.pokemon.types.sorted { $0.slot < $1.slot }.map { Type(pokemonType: $0) } }
    var iconImageURL: URL { URL(string: "https://raw.githubusercontent.com/onevcat/pokemaster-images/master/images/Pokemon-\(self.id).png")! }
    var detailPageURL: URL { URL(string: "https://cn.portal-pokemon.com/play/pokedex/\(String(format: "%03d", self.id))")! }
    var descriptionTextChinese: String { self.species.flavorTextEntries.simplifiedChinese.newlineRemoved }
    var descriptionTextEnglish: String { self.species.flavorTextEntries.english.newlineRemoved }
}

extension PokemonViewModel: CustomStringConvertible {
    var description: String {
        "PokemonViewModel-\(self.id)-\(self.nameChinese)-\(self.nameEnglish)"
    }
}

extension PokemonViewModel {
    struct `Type`: Identifiable {
        
        var id: String { self.name }

        let name: String
        let color: Color
        
        init(name: String, color: Color) {
            self.name = name
            self.color = color
        }
        
        init(pokemonType: Pokemon.`Type`) {
            if let value = TypeInternal(rawValue: pokemonType.type.name)?.value {
                self = value
            } else {
                self.name = "???"
                self.color = .gray
            }
        }
        
        enum TypeInternal: String {
            case normal
            case fighting
            case flying
            case poison
            case ground
            case rock
            case bug
            case ghost
            case steel
            case fire
            case water
            case grass
            case electric
            case psychic
            case ice
            case dragon
            case dark
            case fairy
            case unknown
            case shadow
            
            var value: PokemonViewModel.`Type` {
                switch self {
                case .normal:
                    return `Type`(name: "normal", color: Color(hex: 0xBBBBAC))
                case .fighting:
                    return `Type`(name: "fighting", color: Color(hex: 0xAE5B4A))
                case .flying:
                    return `Type`(name: "flying", color: Color(hex: 0x7199F8))
                case .poison:
                    return `Type`(name: "poison", color: Color(hex: 0x9F5A96))
                case .ground:
                    return `Type`(name: "ground", color: Color(hex: 0xD8BC65))
                case .rock:
                    return `Type`(name: "rock", color: Color(hex: 0xB8AA6F))
                case .bug:
                    return `Type`(name: "bug", color: Color(hex: 0xADBA44))
                case .ghost:
                    return `Type`(name: "ghost", color: Color(hex: 0x6667B5))
                case .steel:
                    return `Type`(name: "steel", color: Color(hex: 0xAAAABA))
                case .fire:
                    return `Type`(name: "fire", color: Color(hex: 0xEB5435))
                case .water:
                    return `Type`(name: "water", color: Color(hex: 0x5198F7))
                case .grass:
                    return `Type`(name: "grass", color: Color(hex: 0x8BC965))
                case .electric:
                    return `Type`(name: "electric", color: Color(hex: 0xF7CD55))
                case .psychic:
                    return `Type`(name: "psychic", color: Color(hex: 0xEC6298))
                case .ice:
                    return `Type`(name: "ice", color: Color(hex: 0x90DBFB))
                case .dragon:
                    return `Type`(name: "dragon", color: Color(hex: 0x7469E6))
                case .dark:
                    return `Type`(name: "dark", color: Color(hex: 0x725647))
                case .fairy:
                    return `Type`(name: "fairy", color: Color(hex: 0xF3AFFA))
                case .unknown:
                    return `Type`(name: "???", color: Color(hex: 0x749E91))
                case .shadow:
                    return `Type`(name: "shadow", color: Color(hex: 0x9F5A96))
                }
            }
        }
    }
}
