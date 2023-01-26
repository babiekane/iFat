//
//  HeaderView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HeaderView: View {
  
    var body: some View {
      
      HStack {
        VStack(alignment: .leading, spacing: 4) {
          HStack {
            BigHeadingText(text: "Hello")
              .foregroundColor(Color("Black"))
            BigHeadingText(text: "Yossa!")
              .foregroundStyle(
                LinearGradient(
                  colors: [Color("GD2-1"), Color("GD2-2")],
                  startPoint: .top,
                  endPoint: .bottom)
              )
          }
          
          HStack {
            PrimaryBodyText(text: "Monday, 9 September")
              .foregroundColor(Color("Black"))
            Button {
              // Calendar
            } label: {
              Image("CheveronDown")
                .renderingMode(.template)
                .foregroundColor(Color("OrangeSemiDark"))
            }
          }
        }
        .padding(.leading, 24)
        
        Spacer()
        
        Image("Art")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 70, height: 70)
          .clipShape(Circle())
          .overlay(
            Circle()
              .stroke(
                LinearGradient(
                  gradient: Gradient(colors: [Color("GD2-1"), Color("GD2-2")]),
                  startPoint: .top,
                  endPoint: .bottom
                ),
                lineWidth: 3
              ))
          .padding(.trailing, 24)
      }
      .padding(.top, 28)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
