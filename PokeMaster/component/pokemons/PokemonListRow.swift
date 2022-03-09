//
//  PokemonListRow.swift
//  PokeMaster
//
//  Created by 宋睿 on 9/3/2022.
//

import SwiftUI

struct PokemonListRow: View {
  let id: Int
  
  @ObservedObject var pokemonViewModel = PokemonViewModel()
  @ObservedObject var pokemonSpeciesViewModel = PokemonSpeciesViewModel()
  
  var body: some View {
    VStack {
      HStack {
        AsyncImage(url: self.pokemonViewModel.iconUrl) { image in
          image.resizable()
        } placeholder: {
          ProgressView()
        }
        .frame(width: 50, height: 50)
        .aspectRatio(contentMode: .fit)
        .shadow(radius: 4)
        
        Spacer()
        
        VStack(alignment: .trailing) {
          Text(self.pokemonSpeciesViewModel.pokemonNames?["zh-Hans"] ?? "...")
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(.white)
          Text(self.pokemonSpeciesViewModel.pokemonNames?["en"] ?? "...")
            .font(.subheadline)
            .foregroundColor(.white)
        }
      }
      .padding(.vertical, 12)
    }
    
    .padding(.leading, 23)
    .padding(.trailing, 15)
    .background(
      ZStack {
        RoundedRectangle(cornerRadius: 20)
          .stroke(self.pokemonSpeciesViewModel.color, style: StrokeStyle(lineWidth: 4))
        RoundedRectangle(cornerRadius: 20)
          .fill(
            LinearGradient(
              gradient: Gradient(colors: [.white, self.pokemonSpeciesViewModel.color]),
              startPoint: .leading,
              endPoint: .trailing
            )
          )
      }
    )
    .padding(.horizontal)
    .onAppear {
      self.pokemonViewModel.fetchData(by: self.id)
      self.pokemonSpeciesViewModel.fetchData(by: self.id)
    }
  }
}

//struct ToolButtonModifier: ViewModifier {
//  func body(content: Content) -> some View {
//    content
//      .font(.system(size: 25))
//      .foregroundColor(.white)
//      .frame(width: 30, height: 30)
//  }
//}

struct PokemonListRow_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      PokemonListRow(id: 1)
        .previewLayout(.fixed(width: 428, height: 120))
      PokemonListRow(id: 25)
        .previewLayout(.fixed(width: 428, height: 150))
      PokemonListRow(id: 393)
        .previewLayout(.fixed(width: 428, height: 120))
    }
  }
}
