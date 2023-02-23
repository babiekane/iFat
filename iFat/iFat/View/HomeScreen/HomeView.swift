//
//  HomeView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

struct HomeView: View {
  
  var body: some View {
    GeometryReader { geometry in
      VStack {
          HeaderView()
          
          ScrollView(.vertical, showsIndicators: false) {
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
        }
        .padding(.bottom, 73)
        .frame(maxWidth: .infinity)
        .background(Color.appWhite)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
      .previewDisplayName("iPhone 14 Pro Max")
    
    HomeView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro"))
      .previewDisplayName("iPhone 14 Pro")
    
    HomeView()
      .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
      .previewDisplayName("iPhone SE (3rd generation)")
  }
}
