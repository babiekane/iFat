//
//  HeaderView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HeaderView: View {
  @State private var image = UIImage()
  
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
      
      NavigationLink {
        ProfileView()
          .navigationBarBackButtonHidden(true)
      } label: {
        Image(uiImage: self.image)
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
    .padding(.top, 16)
    }
  }


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
