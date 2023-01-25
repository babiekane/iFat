//
//  HealthDataView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HealthDataView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 4) {
        Heading20Text(text: "Health Data")
        RoundedRectangle(cornerRadius: 16)
          .stroke(Color("OrangeSemiLight"), lineWidth: 2)
          .background(Rectangle().fill(Color("White")))
          .frame(width: 345, height: 61)
          .overlay(
            HStack {
              Image(systemName: "figure.mixed.cardio")
                .renderingMode(.template)
                .resizable()
                .frame(width: 18, height: 22)
                .padding(.horizontal, 9.62)
                .padding(.vertical, 7.4)
                .foregroundColor(Color("White"))
                .background(Color("LightOrange"))
                .cornerRadius(8)
                .padding(.leading, 16)
              
              VStack(alignment: .leading) {
                Body12SemiBoldText(text: "Weight")
                Body16MediumText(text: "79.80 kg")
                  .foregroundColor(Color("DarkOrange"))
              }
              
              Spacer()
            }
          )
          .padding(.leading, 24)
      }
      .padding(.top, 24)    }
}

struct HealthDataView_Previews: PreviewProvider {
    static var previews: some View {
        HealthDataView()
    }
}
