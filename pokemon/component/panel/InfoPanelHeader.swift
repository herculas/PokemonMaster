//
//  PokemonInfoPanelHeader.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI

extension PokemonInfoPanel {
    
    struct Header: View {
        
        let model: PokemonViewModel
        
        var body: some View {
            HStack(spacing: 18) {
                pokemonIcon
                nameSpecies
                verticalDivider
                VStack(spacing: 12) {
                    bodyStatus
                    typeInfo
                }
            }
        }
        
        var pokemonIcon: some View {
            Image("Pokemon-\(model.id)")
                .resizable()
                .frame(width: 68, height: 68)
        }
        
        var nameSpecies: some View {
            VStack(spacing: 10) {
                VStack {
                    Text(model.nameCn)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(model.color)
                    Text(model.nameEn)
                        .font(.system(size: 13))
                        .fontWeight(.bold)
                        .foregroundColor(model.color)
                }
                Text(model.genusCn)
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
        }
        
        var verticalDivider: some View {
            RoundedRectangle(cornerRadius: 1)
                .frame(width: 1, height: 44)
                .opacity(0.1)
        }
        
        var bodyStatus: some View {
            VStack(alignment: .leading) {
                HStack {
                    Text("身高")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    Text(model.height)
                        .font(.system(size: 11))
                        .foregroundColor(model.color)
                }
                HStack {
                    Text("体重")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    Text(model.weight)
                        .font(.system(size: 11))
                        .foregroundColor(model.color)
                }
            }
        }
        
        var typeInfo: some View {
            HStack {
                ForEach(model.types) { type in
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(type.color)
                            .frame(width: 36, height: 14)
                        Text(type.name)
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct PokemonInfoPanelHeader_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel.Header(model: .sample(id: 1))
            .previewLayout(.fixed(width: 428, height: 100))
    }
}
