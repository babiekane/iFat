//
//  ProfileView.swift
//  iFat
//
//  Created by CatMeox on 17/2/2566 BE.
//

import SwiftUI

struct ProfileView: View {
  @State private var image = UIImage()
  @State private var showSheet = false
  
  var body: some View {
    VStack {
      MediumHeadingText(text: "Profile")
      
      ZStack {
        Image(uiImage: self.image)
          .resizable()
          .background(Color("Black").opacity(0.2))
          .aspectRatio(contentMode: .fill)
          .frame(width: 150, height: 150)
          .clipShape(Circle())
        
        Button {
          // go to profile setting
        } label: {
          Image(systemName: "camera.fill")
            .foregroundColor(Color("White"))
            .padding(10)
            .background(Color("OrangeSemiLight"))
            
        }
      }
      }
    }
  }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
