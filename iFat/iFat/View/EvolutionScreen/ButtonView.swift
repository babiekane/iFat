//
//  ButtonView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct ButtonView: View {
  let screenWidth: Double
  @Binding var isShowingBottomSheet: Bool
  @Binding var dateHome: Date
  
    var body: some View {
      ZStack {
        HStack {
          RoundedRectangle(cornerRadius: 16)
            .stroke(Color.orangeSemiLight, lineWidth: 2)
            .background(Rectangle().fill(Color.appWhite))
            .frame(width: (screenWidth - 48 - 9) / 2, height: 61)
            .overlay(
              HStack {
                Image(systemName: "figure.mixed.cardio")
                  .renderingMode(.template)
                  .resizable()
                  .frame(width: 18, height: 22)
                  .padding(.horizontal, 12)
                  .padding(.vertical, 10)
                  .foregroundColor(.appWhite)
                  .background(Color.lightOrange)
                  .cornerRadius(8)
                  .padding(.leading, 16)
                
                VStack(alignment: .leading) {
                  SecondaryBodyText(text: "Weight")
                  PrimaryBodyText(text: "79.80 kg")
                }
                .foregroundColor(.darkOrange)
                
                Spacer()
              }
            )
        
          RoundedRectangle(cornerRadius: 16)
            .stroke(Color.orangeSemiLight, lineWidth: 2)
            .background(Rectangle().fill(Color.appWhite))
            .frame(width: (screenWidth - 48 - 9) / 2, height: 61)
            .overlay(
              HStack {
                Image(systemName: "calendar")
                  .renderingMode(.template)
                  .resizable()
                  .frame(width: 18, height: 22)
                  .padding(.horizontal, 12)
                  .padding(.vertical, 10)
                  .foregroundColor(.appWhite)
                  .background(Color.lightOrange)
                  .cornerRadius(8)
                  .padding(.leading, 16)
                
                ZStack(alignment: .leading) {
                  Button {
                    withAnimation {
                      isShowingBottomSheet.toggle()
                    }
                  } label: {
                    HStack {
                      Text(dateHome.formatted(.dateTime.day()))
                      Text(dateHome.formatted(.dateTime.month()))
                      Text(dateHome.formatted(.dateTime.year()))
                    }
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.darkOrange)
                  }
                }
                
                Spacer()
              }
            )
        }
      }
    }  
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
      ButtonView(screenWidth: UIScreen.main.bounds.size.width, isShowingBottomSheet: .constant(false), dateHome: .constant(Date.now))
    }
}
