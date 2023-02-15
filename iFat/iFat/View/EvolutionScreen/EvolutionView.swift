//
//  EvolutionView.swift
//  iFat
//
//  Created by CatMeox on 24/1/2566 BE.
//

import SwiftUI

struct EvolutionView: View {
  var body: some View {
    
    VStack(alignment: .leading, spacing: 0) {
      HStack {
        BigHeadingText(text: "Evolution")
          .foregroundStyle(
            LinearGradient(
              colors: [Color("GD2-1"), Color("GD2-2")],
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
        .background(Color("OrangeSemiLight"))
        .foregroundColor(Color("White"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        
      }
      .padding(.horizontal, 24)
      .padding(.bottom, 16)
      .padding(.top, 28)
      
      PictureView()
      
      ButtonView()
      .padding(.leading, 24)
      
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .background(Color("White"))
  }
}

struct EvolutionView_Previews: PreviewProvider {
    static var previews: some View {
        EvolutionView()
    }
}
