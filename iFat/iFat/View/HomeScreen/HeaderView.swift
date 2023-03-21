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
  
  @Binding var isShowingCalendarView: Bool
  @Binding var date: Date
  
  @State private var isDatePickerShown = false
  
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
              Button {
                withAnimation {
                  isShowingCalendarView.toggle()
                }
                self.isDatePickerShown = true
              } label: {
                HStack {
                HStack {
                  Text(date.formatted(.dateTime.weekday(.wide)))
                  + Text(", ")
                  + Text(date.formatted(.dateTime.day()))
                  + Text(" ")
                  + Text(date.formatted(.dateTime.month(.wide)))
                  + Text(" ")
                  + Text(date.formatted(.dateTime.year()))
                }
                  .font(.system(size: 16, weight: .medium, design: .rounded))
                Image("CheveronDown")
                  .renderingMode(.template)
                }
                .foregroundColor(.orangeSemiDark)
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
            .frame(width: 60, height: 60)
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
    .padding(.bottom, 12)
  }
}



struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView(isShowingCalendarView: .constant(false), date: .constant(Date()))
  }
}
