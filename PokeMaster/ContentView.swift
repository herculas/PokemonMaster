//
//  ContentView.swift
//  PokeMaster
//
//  Created by 宋睿 on 22/2/2022.
//

import SwiftUI
import Combine

struct ContentView: View {
  var body: some View {
    Button("Button") {
      var data = Data()
      HttpRequest.getData(
        from: URL(string: "https://pokeapi.co/api/v2/pokemon-color/1")!,
        by: { response in
          print(response)
          data = response
        }
      )
      print(data)
//      print(try! appDecoder.decode(PokemonColor.self, from: data))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
