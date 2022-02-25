//
//  InfoPanelAbilityList.swift
//  pokemon
//
//  Created by 宋睿 on 2/2/2022.
//

import SwiftUI

extension PokemonInfoPanel {
  
  struct AbilityList: View {
    
    let model: PokemonViewModel
    let abilityModels: [AbilityViewModel]?
    
    var body: some View {
      VStack(alignment: .leading, spacing: 12) {
        Text("技能")
          .font(.headline)
          .fontWeight(.bold)
        if abilityModels != nil {
          ForEach(abilityModels!) { ability in
            Text(ability.nameSimplifiedChinese)
              .font(.subheadline)
              .foregroundColor(model.color)
            Text(ability.descriptionSimplifiedChinese)
              .font(.footnote)
              .foregroundColor(Color(hex: 0xAAAAAA))
              .fixedSize(horizontal: false, vertical: true)
          }
        }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
    }
  }
}

struct InfoPanelAbilityList_Previews: PreviewProvider {
  static var previews: some View {
    PokemonInfoPanel.AbilityList(
      model: .sample(id: 1),
      abilityModels: AbilityViewModel.sample(pokemonId: 1)
    )
      .previewLayout(.fixed(width: 428, height: 400))
  }
}
