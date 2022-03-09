////
////  PokemonInfoPanelHeader.swift
////  pokemon
////
////  Created by 宋睿 on 2/2/2022.
////
//
//import SwiftUI
//
//extension PokemonInfoPanel {
//
//  struct Header: View {
//
//    let pokemonViewModel: PokemonViewModel
//    let pokemonSpeciesViewModel: PokemonSpeciesViewModel
//    let coreTypeViewModels: [CoreTypeViewModel]
//
//    var body: some View {
//      HStack(spacing: 18) {
//        pokemonIcon
//        nameSpecies
//        verticalDivider
//        VStack(spacing: 12) {
//          bodyStatus
//          typeInfo
//        }
//      }
//    }
//
//    var pokemonIcon: some View {
//      Image("Pokemon-\(pokemonViewModel.id!)")
//        .resizable()
//        .frame(width: 68, height: 68)
//    }
//
//    var nameSpecies: some View {
//      VStack(spacing: 10) {
//        VStack {
//          Text(pokemonSpeciesViewModel.pokemonNames?["zh-Hans"] ?? "n.a.")
//            .font(.system(size: 22))
//            .fontWeight(.bold)
//            .foregroundColor(pokemonSpeciesViewModel.color)
//          Text(pokemonSpeciesViewModel.pokemonNames?["en"] ?? "n.a.")
//            .font(.system(size: 13))
//            .fontWeight(.bold)
//            .foregroundColor(pokemonSpeciesViewModel.color)
//        }
//        Text(pokemonSpeciesViewModel.genusNames?["zh-Hans"] ?? "n.a.")
//          .font(.system(size: 13))
//          .fontWeight(.bold)
//          .foregroundColor(.gray)
//      }
//    }
//
//    var verticalDivider: some View {
//      RoundedRectangle(cornerRadius: 1)
//        .frame(width: 1, height: 44)
//        .opacity(0.1)
//    }
//
//    var bodyStatus: some View {
//      VStack(alignment: .leading) {
//        HStack {
//          Text("身高")
//            .font(.system(size: 11))
//            .foregroundColor(.gray)
//          Text(pokemonViewModel.height)
//            .font(.system(size: 11))
//            .foregroundColor(pokemonSpeciesViewModel.color)
//        }
//        HStack {
//          Text("体重")
//            .font(.system(size: 11))
//            .foregroundColor(.gray)
//          Text(pokemonViewModel.weight)
//            .font(.system(size: 11))
//            .foregroundColor(pokemonSpeciesViewModel.color)
//        }
//      }
//    }
//
//    var typeInfo: some View {
//      HStack {
//        ForEach(coreTypeViewModels) { typeViewModel in
//          ZStack {
//            RoundedRectangle(cornerRadius: 7)
//              .fill(typeViewModel.color)
//              .frame(width: 36, height: 14)
//            Text(typeViewModel.names?["zh-Hans"] ?? "n.a.")
//              .font(.system(size: 10))
//              .foregroundColor(.white)
//          }
//        }
//      }
//    }
//  }
//}
//
//struct PokemonInfoPanelHeader_Previews: PreviewProvider {
//  static var previews: some View {
//    PokemonInfoPanel.Header(
//      pokemonViewModel: .sample(id: 25),
//      pokemonSpeciesViewModel: .sample(id: 25),
//      coreTypeViewModels: [.sample(id: 1), .sample(id: 2)]
//    )
//      .previewLayout(.fixed(width: 428, height: 100))
//  }
//}
