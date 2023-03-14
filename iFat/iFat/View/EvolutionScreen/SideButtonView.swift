//
//  SideButtonView.swift
//  iFat
//
//  Created by CatMeox on 14/3/2566 BE.
//

import SwiftUI

struct SideButtonView: View {
  let sides = ["Front", "Back", "Left", "Right"]
  @State private var selectedSide = "Front"
  
    var body: some View {
      Menu {
        Picker("Select an option", selection: $selectedSide) {
            ForEach(sides, id: \.self) {
              Text($0)
                .font(.system(.headline))
                .foregroundColor(.red)
            }
        }
         
      } label: {
        HStack(spacing: 4) {
          PrimaryBodyText(text: selectedSide)
          Image(systemName: "arrow.triangle.2.circlepath")
        }
          .pickerStyle(DefaultPickerStyle())
          .accentColor(Color.appWhite)
          .padding(8)
          .background(Color.orangeSemiLight)
          .cornerRadius(8)
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
      }
    }
}

struct SideButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SideButtonView()
    }
}
