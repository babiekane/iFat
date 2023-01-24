//
//  EvolutionView.swift
//  iFat
//
//  Created by CatMeox on 24/1/2566 BE.
//

import SwiftUI

struct EvolutionView: View {
  var body: some View {
    
    VStack(alignment: .leading, spacing: 0) {
      Text("Evolution")
        .font(.system(size: 34, weight: .bold, design: .rounded))
        .foregroundStyle(
          LinearGradient(
            colors: [Color("GD2-1"), Color("GD2-2")],
            startPoint: .top,
            endPoint: .bottom
          )
        )
        .padding(.leading, 24)
        .padding(.bottom, 16)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          Image("Front")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 290, height: 520)
            .clipShape(RoundedRectangle(cornerRadius: 25))
          
          Image("Back")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 290, height: 520)
            .clipShape(RoundedRectangle(cornerRadius: 25))
          
          Image("Side")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 290, height: 520)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 24)
      }
      
      HStack(spacing: 9) {
        RoundedRectangle(cornerRadius: 16)
          .stroke(Color("OrangeSemiLight"), lineWidth: 2)
          .background(Rectangle().fill(Color("White")))
          .frame(width: 194, height: 61)
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
                Text("Weight")
                  .font(.system(size: 12, weight: .semibold, design: .rounded))
                Text("79.80 kg")
                  .font(.system(size: 16, weight: .medium, design: .rounded))
                  .foregroundColor(Color("DarkOrange"))
              }
              
              Spacer()
            }
          )
                
        RoundedRectangle(cornerRadius: 16)
          .stroke(Color("OrangeSemiLight"), lineWidth: 2)
          .background(Rectangle().fill(Color("White")))
          .frame(width: 142, height: 61)
          .overlay(
            HStack {
              Image(systemName: "calendar")
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
                Text("Today")
                  .font(.system(size: 16, weight: .medium, design: .rounded))
                  .foregroundColor(Color("DarkOrange"))
              }
              
              Spacer()
            }
          )
      }
      .padding(.leading, 24)
      
      Spacer()
    }
  }
}

struct EvolutionView_Previews: PreviewProvider {
    static var previews: some View {
        EvolutionView()
    }
}
