//
//  HomeView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

struct HomeView: View {
  @Binding var isShowingCalendarView: Bool
  @Binding var date: Date
  
  @Binding var isShowingTextFieldView: Bool
  @Binding var weight: String
  
  var body: some View {
    GeometryReader { geometry in
      VStack(spacing: 0) {
        HeaderView(isShowingCalendarView: $isShowingCalendarView,
                   date: $date)
        
        ScrollView(.vertical, showsIndicators: false) {
          VStack(spacing: 0) {
            HealthDataView(
              screenWidth: geometry.size.width,
              isShowingTextFieldView: $isShowingTextFieldView,
              weight: $weight
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
    HomeView(isShowingCalendarView: .constant(false), date: .constant(Date()), isShowingTextFieldView: .constant(false), weight: .constant("0"))
  }
}
