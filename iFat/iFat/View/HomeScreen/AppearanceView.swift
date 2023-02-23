//
//  AppearanceView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct AppearanceView: View {
  
  let screenWidth: Double
  let screenHeight: Double
  
  var body: some View {
        VStack(alignment: .leading, spacing: 4) {
          SmallHeadingText(text: "Appearance")
            .padding(.leading, 24)
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
              Image("Front")
                .resizable()
                .frame(width: screenWidth * (240/393) ,
                       height: (screenWidth * (240/393)) * (4/3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
              Image("Back")
                .resizable()
                .frame(width: screenWidth * (240/393) ,
                       height: (screenWidth * (240/393)) * (4/3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
              Image("Side")
                .resizable()
                .frame(width: screenWidth * (240/393) ,
                       height: (screenWidth * (240/393)) * (4/3))
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding(.horizontal, 24)
          }
        }
        .padding(.top, 24)
  }
}

struct AppearanceView_Previews: PreviewProvider {
    static var previews: some View {
      AppearanceView(screenWidth: UIScreen.main.bounds.size.width, screenHeight: UIScreen.main.bounds.size.height)
    }
}
