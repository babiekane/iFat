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
      HStack {
        VStack(alignment: .leading, spacing: 4) {
          HStack {
            Text("Hello")
              .font(.system(size: 34, weight: .bold, design: .rounded))
              .foregroundColor(Color("Black"))
            Text("Yossa!")
              .font(.system(size: 34, weight: .bold, design: .rounded))
              .foregroundStyle(
                
                LinearGradient(
                  colors: [Color("GD2-1"), Color("GD2-2")],
                  startPoint: .top,
                  endPoint: .bottom
                )
              )
          }
          HStack {
            Text("Monday, 9 September")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(Color("OrangeSemiDark"))
            Button {
              // Calendar
            } label: {
              Image("CheveronDown")
                .renderingMode(.template)
                .foregroundColor(Color("OrangeSemiDark"))
            }
          }
        }
        .padding(.leading, 24)
        
        Spacer()
        
        Image("Art")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 70, height: 70)
          .clipShape(Circle())
          .overlay(
            Circle()
              .stroke(
                LinearGradient(
                  gradient: Gradient(colors: [Color("GD2-1"), Color("GD2-2")]),
                  startPoint: .top,
                  endPoint: .bottom
                ),
                lineWidth: 3
              ))
          .padding(.trailing, 24)
      }
      
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading) {
          Text("Health Data")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundStyle(Color("DarkOrange"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 4)
          
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
                  Text("Weight")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                  Text("79.80 kg")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(Color("DarkOrange"))
                }
                
                Spacer()
              }
            )
        }
        .padding(.top, 24)
        .padding(.leading, 24)
        
        VStack(alignment: .leading) {
          Text("Appearance")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundStyle(Color("DarkOrange"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 4)
            .padding(.leading, 24)
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
              Image("Front")
                .resizable()
                .frame(width: 240, height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 25))
              
              Image("Back")
                .resizable()
                .frame(width: 240, height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 25))
              
              Image("Side")
                .resizable()
                .frame(width: 240, height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 25))
              
            }
            .padding(.horizontal, 24)
          }
        }
        .padding(.top, 24)
        
        VStack(alignment: .leading) {
          Text("Breakfast")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundStyle(Color("DarkOrange"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 4)
            .padding(.leading, 24)
          
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
        
        VStack(alignment: .leading) {
          Text("Lunch")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundStyle(Color("DarkOrange"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 4)
            .padding(.leading, 24)
          
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
        
        VStack(alignment: .leading) {
          Text("Dinner")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundStyle(Color("DarkOrange"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 4)
            .padding(.leading, 24)
          
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
        .padding(.top, 24)
        
        
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
