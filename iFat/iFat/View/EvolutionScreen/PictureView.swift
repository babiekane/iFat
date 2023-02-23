//
//  PictureView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct PictureView: View {
  let screenWidth: Double
  let screenHeight: Double
  
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          ForEach(["Front", "Front", "Front"], id: \.self) { imageName in
            Image(imageName)
              .resizable()
              .aspectRatio(contentMode: .fill)
              .frame(width: screenWidth * 0.67)
              .frame(maxHeight: .infinity)
              .clipShape(RoundedRectangle(cornerRadius: 25))
          }
        }
        
        .padding(.horizontal, 24)
        .padding(.bottom, 24)
      }
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView(screenWidth: UIScreen.main.bounds.size.width, screenHeight: UIScreen.main.bounds.size.height)
    }
}
