////
////  PokemonInfoPanel.swift
////  pokemon
////
////  Created by 宋睿 on 1/2/2022.
////
//
//import SwiftUI
//
//struct PokemonInfoPanel: View {
//
//  let pokemonViewModel: PokemonViewModel
//  let pokemonSpeciesViewModel: PokemonSpeciesViewModel
//  let coreTypeViewModels: [CoreTypeViewModel]
//  let abilityViewModels: [AbilityViewModel]
//
//  var topIndicator: some View {
//    RoundedRectangle(cornerRadius: 3)
//      .frame(width: 40, height: 6)
//      .opacity(0.2)
//  }
//
//  var pokemonDescription: some View {
//    Text(pokemonSpeciesViewModel.descriptions?["zh-Hans"] ??
//         pokemonSpeciesViewModel.descriptions?["en"] ??
//         "?"
//    )
//      .font(.callout)
//      .foregroundColor(Color(hex: 0x666666))
//      .fixedSize(horizontal: false, vertical: true)
//  }
//
//  var body: some View {
//    VStack(spacing: 20) {
//      topIndicator
//      Header(pokemonViewModel: pokemonViewModel,
//             pokemonSpeciesViewModel: pokemonSpeciesViewModel,
//             coreTypeViewModels: coreTypeViewModels)
//      pokemonDescription
//      Divider()
//      AbilityList(pokemonSpeciesViewModel: pokemonSpeciesViewModel,
//                  abilityViewModels: abilityViewModels
//      )
//    }
//    .padding(EdgeInsets(top: 12, leading: 30, bottom: 30, trailing: 30))
//    .blurBackground(style: .systemMaterial)
//    .cornerRadius(20)
//    .fixedSize(horizontal: false, vertical: true)
//  }
//}
//
//struct PokemonInfoPanel_Previews: PreviewProvider {
//  static var previews: some View {
//    PokemonInfoPanel(
//      pokemonViewModel: .sample(id: 1),
//      pokemonSpeciesViewModel: .sample(id: 1),
//      coreTypeViewModels: [.sample(id: 1), .sample(id: 2)],
//      abilityViewModels: [.sample(id: 34), .sample(id: 65)]
//    )
//      .previewLayout(.fixed(width: 428, height: 400))
//  }
//}
