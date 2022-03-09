////
////  InfoPanelAbilityList.swift
////  pokemon
////
////  Created by 宋睿 on 2/2/2022.
////
//
//import SwiftUI
//
//extension PokemonInfoPanel {
//  
//  struct AbilityList: View {
//    
//    let pokemonSpeciesViewModel: PokemonSpeciesViewModel
//    let abilityViewModels: [AbilityViewModel]
//    
//    var body: some View {
//      VStack(alignment: .leading, spacing: 12) {
//        Text("技能")
//          .font(.headline)
//          .fontWeight(.bold)
//        ForEach(abilityViewModels) { abilityViewModel in
//          Text(abilityViewModel.names?["zh-Hans"] ?? "??")
//            .font(.subheadline)
//            .foregroundColor(pokemonSpeciesViewModel.color)
//          Text(abilityViewModel.descriptions?["zh-Hans"] ?? "??")
//            .font(.footnote)
//            .foregroundColor(Color(hex: 0xAAAAAA))
//            .fixedSize(horizontal: false, vertical: true)
//        }
//      }
//      .frame(maxWidth: .infinity, alignment: .leading)
//    }
//  }
//}
//
//struct InfoPanelAbilityList_Previews: PreviewProvider {
//  static var previews: some View {
//    PokemonInfoPanel.AbilityList(
//      pokemonSpeciesViewModel: .sample(id: 1),
//      abilityViewModels: [.sample(id: 34), .sample(id: 65)]
//    )
//      .previewLayout(.fixed(width: 428, height: 400))
//  }
//}
