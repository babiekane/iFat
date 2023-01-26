//
//  MealView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct MealView: View {
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
              .frame(width: 150, height: 150)
              .clipShape(RoundedRectangle(cornerRadius: 25))
            Image("Breakfast2")
              .resizable()
              .frame(width: 150, height: 150)
              .clipShape(RoundedRectangle(cornerRadius: 25))
            Image("Breakfast3")
              .resizable()
              .frame(width: 150, height: 150)
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
              .frame(width: 150, height: 150)
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
              .frame(width: 150, height: 150)
              .clipShape(RoundedRectangle(cornerRadius: 25))
            Image("Dinner2")
              .resizable()
              .frame(width: 150, height: 150)
              .clipShape(RoundedRectangle(cornerRadius: 25))
          }
          .padding(.leading, 24)
          .padding(.trailing, 24)
        }
      }
      .padding(.top, 24)    }
  }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
