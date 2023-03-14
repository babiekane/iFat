//
//  EvolutionView.swift
//  iFat
//
//  Created by CatMeox on 24/1/2566 BE.
//

import SwiftUI

struct EvolutionView: View {
  @Binding var isShowingBottomSheet: Bool
  @Binding var date: Date
  
  var body: some View {
    GeometryReader { geometry in
      ZStack {
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
            
            SideButtonView()
            
          }
          .padding(.horizontal, 24)
          .padding(.bottom, 16)
          .padding(.top, 16)
          
          PictureView(
            screenWidth: geometry.size.width,
            screenHeight: geometry.size.height)
          
          ButtonView(
            screenWidth: geometry.size.width,
            isShowingBottomSheet: $isShowingBottomSheet,
            dateHome: $date
          )
          .padding(.leading, 24)
        }
        .padding(.bottom, 73)
        .frame(maxWidth: .infinity)
        .background(Color.appWhite)
        
//        BottomSheetView(isShowing: $isShowingBottomSheet, date: $date)
      }
    }
  }
}

struct EvolutionView_Previews: PreviewProvider {
    static var previews: some View {
      EvolutionView(isShowingBottomSheet: .constant(false), date: .constant(Date()))
    }
}
