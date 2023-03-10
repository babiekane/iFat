//
//  EvolutionView.swift
//  iFat
//
//  Created by CatMeox on 24/1/2566 BE.
//

import SwiftUI

struct EvolutionView: View {
  var body: some View {
    GeometryReader { geometry in
      VStack(alignment: .leading, spacing: 0) {
        HStack {
          LargeHeadingText(text: "Evolution")
            .foregroundStyle(
              LinearGradient(
                colors: [Color.linearGradientPrimary, Color.linearGradientSecondary],
                startPoint: .top,
                endPoint: .bottom
              )
            )
          
          Spacer()
          
          Button {
            //select side of picture
          } label: {
            PrimaryBodyText(text: "Front")
            Image(systemName: "chevron.down")
          }
          .padding(8)
          .background(Color.orangeSemiLight)
          .foregroundColor(.appWhite)
          .clipShape(RoundedRectangle(cornerRadius: 8))
          
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 16)
        .padding(.top, 16)
        
        PictureView(
          screenWidth: geometry.size.width,
          screenHeight: geometry.size.height)
        
        ButtonView(
          screenWidth: geometry.size.width
        )
        .padding(.leading, 24)
      }
      .padding(.bottom, 73)
      .frame(maxWidth: .infinity)
      .background(Color.appWhite)
    }
  }
}

struct EvolutionView_Previews: PreviewProvider {
    static var previews: some View {
        EvolutionView()
    }
}
