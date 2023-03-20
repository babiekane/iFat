//
//  HealthDataView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct HealthDataView: View {
  let screenWidth: Double
  
  var body: some View {
   
        VStack(alignment: .leading, spacing: 4) {
          SmallHeadingText(text: "Health Data")
          RoundedRectangle(cornerRadius: 16)
            .stroke(Color.orangeSemiLight, lineWidth: 2)
            .frame(width: screenWidth - 48, height: 61)
            .shadow(color: Color.appBlack.opacity(0.1),
                    radius: 6, x: 0, y: 4)
            .overlay(
              HStack {
                Image(systemName: "figure.mixed.cardio")
                  .renderingMode(.template)
                  .resizable()
                  .frame(width: 18, height: 22)
                  .padding(.horizontal, 12)
                  .padding(.vertical, 10)
                  .foregroundColor(.appWhite)
                  .background(Color.lightOrange)
                  .cornerRadius(8)
                  .padding(.leading, 16)
                
                VStack(alignment: .leading) {
                  SecondaryBodyText(text: "Weight")
                    .foregroundColor(.appBlack)
                  PrimaryBodyText(text: "Add your weight")
                    .foregroundColor(.darkOrange)
                }
                
                Spacer()
                Button {
                  
                } label: {
                  Image(systemName: "square.and.pencil")
                    .foregroundColor(.darkOrange)
                    .padding(.trailing, 16)
                }
               
              }
            )
        }
        .padding(.top, 24)
        .padding(.bottom, 24)
        .padding(.horizontal, 24)
        Spacer()
    }
  }

struct HealthDataView_Previews: PreviewProvider {
    static var previews: some View {
        HealthDataView(screenWidth: UIScreen.main.bounds.size.width)
    }
}
