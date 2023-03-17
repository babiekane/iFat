//
//  HomeView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

struct HomeView: View {
  @Binding var isShowingBottomSheet: Bool
  @Binding var date: Date
  
  var body: some View {
    GeometryReader { geometry in
      VStack(spacing: 0) {
        HeaderView(isShowingBottomSheet: $isShowingBottomSheet, date: $date)
        
        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 0) {
            HealthDataView(
              screenWidth: geometry.size.width
            )
            
            AppearanceView(
              screenWidth: geometry.size.width,
              screenHeight: geometry.size.height
            )
            
            MealView(
              screenWidth: geometry.size.width,
              screenHeight: geometry.size.height
            )
          }
          .padding(.bottom, 16)
        }
      }
      .padding(.bottom, 73)
      .frame(maxWidth: .infinity)
      .background(Color.appWhite)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(isShowingBottomSheet: .constant(false), date: .constant(Date()))
  }
}
