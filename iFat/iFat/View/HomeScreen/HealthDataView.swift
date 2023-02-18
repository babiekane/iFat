//
//  HealthDataView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HealthDataView: View {
    var body: some View {
      HStack {
        VStack(alignment: .leading, spacing: 4) {
          SmallHeadingText(text: "Health Data")
          RoundedRectangle(cornerRadius: 16)
            .stroke(Color.orangeSemiLight, lineWidth: 2)
            .background(Rectangle().fill(Color.appWhite))
            .frame(width: 345, height: 61)
            .overlay(
              HStack {
                Image(systemName: "figure.mixed.cardio")
                  .renderingMode(.template)
                  .resizable()
                  .frame(width: 18, height: 22)
                  .padding(.horizontal, 9.62)
                  .padding(.vertical, 7.4)
                  .foregroundColor(.appWhite)
                  .background(Color.lightOrange)
                  .cornerRadius(8)
                  .padding(.leading, 16)
                
                VStack(alignment: .leading) {
                  SecondaryBodyText(text: "Weight")
                  PrimaryBodyText(text: "79.80 kg")
                }
                .foregroundColor(.darkOrange)
                
                Spacer()
              }
            )
        }
        .padding(.top, 24)
        .padding(.horizontal, 24)
        Spacer()
      }
    }
}

struct HealthDataView_Previews: PreviewProvider {
    static var previews: some View {
        HealthDataView()
    }
}
