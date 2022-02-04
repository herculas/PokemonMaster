//
//  ContentView.swift
//  pokemon
//
//  Created by 宋睿 on 30/1/2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    MainTab().environmentObject(Store())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
