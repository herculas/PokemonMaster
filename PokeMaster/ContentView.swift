//
//  ContentView.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        Button("trigger") {
            let token = SubscriptionToken()
            let request = PokemonRequest(id: 1).publisher
            request.sink { comp in
                print(comp)
                token.unseal()
            } receiveValue: { vm in
                print(vm)
            }.seal(in: token)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
