//
//  PokemonInfoRowView.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import SwiftUI

struct PokemonInfoRowView: View {
    let model = PokemonViewModel.sample(id: 1)
    
    var body: some View {
        VStack {
            HStack {
                Text("Hello, world!")
                    .padding()
            }
        }
    }
}

struct PokemonInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoRowView()
    }
}
