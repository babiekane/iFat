//
//  AppearanceView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct AppearanceView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 4) {
        Heading20Text(text: "Appearance")
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
    }
}

struct AppearanceView_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceView()
    }
}
