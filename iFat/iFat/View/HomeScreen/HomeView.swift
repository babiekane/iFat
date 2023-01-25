//
//  HomeView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    VStack {
      HeaderView()
      
      ScrollView(.vertical, showsIndicators: false) {
        HealthDataView()
        
        AppearanceView()
        
        MealView()
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
