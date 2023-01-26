//
//  PictureView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct PictureView: View {
    var body: some View {
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
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
