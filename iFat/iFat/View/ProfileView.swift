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
  
  @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
  
  var body: some View {
    VStack {
      ZStack {
        HStack {
          Button(action: {
            presentationMode.wrappedValue.dismiss()
          }, label: {
            Image(systemName: "chevron.left")
              .padding(.top, -10)
              .padding(.leading, 24)
              .bold()
              .foregroundColor(.orangeSemiDark)
          })
          
          Spacer()
        }
        
        HStack {
          Spacer()
          
          MediumHeadingText(text: "Profile")
            .foregroundStyle(
              LinearGradient(
                colors: [Color.linearGradientPrimary, Color.linearGradientSecondary],
                startPoint: .top,
                endPoint: .bottom)
            )
            .padding(.bottom, 40)
            .padding(.top, 28)
          
          Spacer()
        }
      }
      
      ZStack {
        Image(uiImage: self.image)
          .resizable()
          .background(Color.appBlack.opacity(0.2))
          .aspectRatio(contentMode: .fill)
          .frame(width: 150, height: 150)
          .clipShape(Circle())
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
        
        HStack {
          Button {
            // go to profile setting
          } label: {
            Image(systemName: "camera.fill")
              .foregroundColor(.appWhite)
              .padding(10)
              .background(Color.orangeSemiLight)
              .clipShape(Circle())
              .overlay(
                Circle()
                  .stroke(Color.appWhite, lineWidth: 3)
              )
          }
        }
        .padding(.top, 100)
        .padding(.leading, 100)
      }
      .padding(.bottom, 50)
      
      VStack {
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Name")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            PrimaryBodyText(text: "Yossa")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.bottom, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Sex")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            PrimaryBodyText(text: "Male")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Date of birth")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            PrimaryBodyText(text: "15 June 1995")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Height")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            PrimaryBodyText(text: "178 cm")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
        Rectangle()
          .frame(width: 298, height: 0.25)
          .background(Color.appBlack)
          .opacity(0.05)
        
        HStack(spacing: 0) {
          PrimaryBodyText(text: "Weight")
            .foregroundColor(.appBlack)
          
          Spacer()
          
          Button {
            
          } label: {
            PrimaryBodyText(text: "79.80 kg")
              .foregroundColor(.appBlack.opacity(0.3))
            Image(systemName: "chevron.right")
              .foregroundColor(.lightOrange)
          }
        }
        .padding(.leading, 24)
        .padding(.trailing, 24)
        .padding(.top, 12)
        
      }
      .frame(width: 345, height: 239)
      .padding(.top, 24)
      .padding(.bottom, 24)
      .background(Color.appWhite)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .shadow(color: Color.appBlack.opacity(0.1),
              radius: 6, x: 0, y: 4)
      
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .background(Color.appWhite)

  }
}


struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
