//
//  MealView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct MealView: View {
  let screenWidth: Double
  let screenHeight: Double
  
  var body: some View {
    VStack {
      VStack(alignment: .leading, spacing: 4) {
        SmallHeadingText(text: "Breakfast")
          .padding(.leading, 24)
          .padding(.bottom, 4)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 16) {
            Image("Breakfast")
              .resizable()
              .frame(width: screenWidth * (150/393),
                     height: screenWidth * (150/393))
              .clipShape(RoundedRectangle(cornerRadius: 25))
            Image("Breakfast2")
              .resizable()
              .frame(width: screenWidth * (150/393),
                     height: screenWidth * (150/393))
              .clipShape(RoundedRectangle(cornerRadius: 25))
            Image("Breakfast3")
              .resizable()
              .frame(width: screenWidth * (150/393),
                     height: screenWidth * (150/393))
              .clipShape(RoundedRectangle(cornerRadius: 25))
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)
      
      VStack(alignment: .leading, spacing: 4) {
        SmallHeadingText(text: "Lunch")
          .padding(.leading, 24)
          .padding(.bottom, 4)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 16) {
            Image("Lunch")
              .resizable()
              .frame(width: screenWidth * (150/393),
                     height: screenWidth * (150/393))
              .clipShape(RoundedRectangle(cornerRadius: 25))
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)
      
      VStack(alignment: .leading, spacing: 4) {
        SmallHeadingText(text: "Dinner")
          .padding(.leading, 24)
          .padding(.bottom, 4)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing: 16) {
            Image("Dinner")
              .resizable()
              .frame(width: screenWidth * (150/393),
                     height: screenWidth * (150/393))
              .clipShape(RoundedRectangle(cornerRadius: 25))
            Image("Dinner2")
              .resizable()
              .frame(width: screenWidth * (150/393),
                     height: screenWidth * (150/393))
              .clipShape(RoundedRectangle(cornerRadius: 25))
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)
    }
  }
}

struct MealView_Previews: PreviewProvider {
  static var previews: some View {
    MealView(screenWidth: UIScreen.main.bounds.size.width, screenHeight: UIScreen.main.bounds.size.height)
  }
}
