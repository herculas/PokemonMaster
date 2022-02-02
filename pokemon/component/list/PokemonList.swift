//
//  PokemonList.swift
//  pokemon
//
//  Created by 宋睿 on 1/2/2022.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandedIndex: Int?
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            LazyVStack {
                TextField("搜索", text: $searchText)
                    .frame(height: 40)
                    .padding(.horizontal, 25)
                
                ForEach(PokemonViewModel.all) { pokemon in
                    PokemonInfoRow(model: pokemon, expanded: self.expandedIndex == pokemon.id)
                        .onTapGesture {
                            withAnimation(
                                .spring(response: 0.55, dampingFraction: 0.425, blendDuration: 0)
                            ) {
                                    if self.expandedIndex == pokemon.id {
                                        self.expandedIndex = nil
                                    } else {
                                        self.expandedIndex = pokemon.id
                                    }
                                }
                        }
                }
            }
        }
//        .overlay(
//            VStack {
//                Spacer()
//                PokemonInfoPanel(model: .sample(id: 1))
//            }.edgesIgnoringSafeArea(.bottom)
//        )
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
