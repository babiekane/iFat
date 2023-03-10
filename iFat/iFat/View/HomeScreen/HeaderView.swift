//
//  HeaderView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HeaderView: View {
  @State private var image = UIImage()
  @State private var showingCalendar = false
  
  @Binding var isShowingBottomSheet: Bool
  @Binding var date: Date
  
  var body: some View {
    ZStack {
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
          
          ZStack(alignment: .leading) {
            HStack {
              HStack {
                Text(date.formatted(.dateTime.weekday(.wide)))
                + Text(",")
                Text(date.formatted(.dateTime.day()))
                Text(date.formatted(.dateTime.month(.wide)))
                Text(date.formatted(.dateTime.year()))
              }
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.appBlack)
              
              Button {
                withAnimation {
                  isShowingBottomSheet.toggle()
                }
              } label: {
                Image("CheveronDown")
                  .renderingMode(.template)
                  .foregroundColor(.orangeSemiDark)
              }
            }
          }
        }
        Spacer()
      }
      .padding(.leading, 24)
      
      HStack {
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
    }
    .padding(.top, 16)
  }
}



struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(isShowingBottomSheet: .constant(false), date: .constant(Date()))
  }
}
