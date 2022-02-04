//
//  PokemonInfoPanel.swift
//  pokemon
//
//  Created by 宋睿 on 1/2/2022.
//

import SwiftUI

struct PokemonInfoPanel: View {
  
  let model: PokemonViewModel
  var abilities: [AbilityViewModel] {
    AbilityViewModel.sample(pokemonId: model.id)
  }
  
  var topIndicator: some View {
    RoundedRectangle(cornerRadius: 3)
      .frame(width: 40, height: 6)
      .opacity(0.2)
  }
  
  var pokemonDescription: some View {
    Text(model.descTextCn)
      .font(.callout)
      .foregroundColor(Color(hex: 0x666666))
      .fixedSize(horizontal: false, vertical: true)
  }
  
  var body: some View {
    VStack(spacing: 20) {
      topIndicator
      Header(model: model)
      pokemonDescription
      Divider()
      AbilityList(model: model, abilityModels: abilities)
    }
    .padding(EdgeInsets(top: 12, leading: 30, bottom: 30, trailing: 30))
    .blurBackground(style: .systemMaterial)
    .cornerRadius(20)
    .fixedSize(horizontal: false, vertical: true)
  }
}

struct PokemonInfoPanel_Previews: PreviewProvider {
  static var previews: some View {
    PokemonInfoPanel(model: .sample(id: 1))
      .previewLayout(.fixed(width: 428, height: 400))
  }
}
