//
//  PokemonList.swift
//  pokemon
//
//  Created by 宋睿 on 1/2/2022.
//

import SwiftUI

struct PokemonList: View {
  
  @State var searchText = String()
  
  var body: some View {
    ScrollView {
      LazyVStack {
        TextField("搜索", text: $searchText)
          .frame(height: 40)
          .padding(.horizontal, 25)
        ForEach(1..<101) { id in
          PokemonListRow(id: id)
            .padding(.bottom, 3)
            .onTapGesture { print("tap on pokemon \(id)") }
        }
      }
    }
    //    .overlay(
    //      VStack {
    //        Spacer()
    //        PokemonInfoPanel(model: .sample(id: 1))
    //      }.edgesIgnoringSafeArea(.bottom)
    //    )
  }
}

struct PokemonList_Previews: PreviewProvider {
  static var previews: some View {
    PokemonList()
  }
}
