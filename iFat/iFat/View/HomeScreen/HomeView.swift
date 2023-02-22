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
        .frame(maxWidth: .infinity)
        .background(Color.appWhite)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
