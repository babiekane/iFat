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
          LargeHeadingText(text: "Hello")
            .foregroundColor(.appBlack)
          LargeHeadingText(text: "Yossa!")
            .foregroundStyle(
              LinearGradient(
                colors: [Color.linearGradientPrimary, Color.linearGradientSecondary],
                startPoint: .top,
                endPoint: .bottom)
            )
        }
        
        HStack {
          PrimaryBodyText(text: "Monday, 9 September")
            .foregroundColor(.appBlack)
          Button {
            // Calendar
          } label: {
            Image("CheveronDown")
              .renderingMode(.template)
              .foregroundColor(.orangeSemiDark)
          }
        }
      }
      .padding(.leading, 24)
      
      Spacer()
      
      Button {
        // go to profile setting
      } label: {
        Image("Art")
          .resizable()
          .background(Color.appBlack.opacity(0.2))
          .aspectRatio(contentMode: .fill)
          .frame(width: 70, height: 70)
          .clipShape(Circle())
          .overlay(
            Circle()
              .stroke(
                LinearGradient(
                  gradient: Gradient(colors: [Color.linearGradientPrimary, Color.linearGradientSecondary]),
                  startPoint: .top,
                  endPoint: .bottom
                ),
                lineWidth: 3
              ))
          .padding(.trailing, 24)
      }
    }
    .padding(.top, 28)
  }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
