//
//  SettingsView.swift
//  iFat
//
//  Created by CatMeox on 15/2/2566 BE.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    NavigationView {
    VStack(alignment: .leading, spacing: 0) {
      HStack {
        LargeHeadingText(text: "Settings")
          .foregroundStyle(
            LinearGradient(
              colors: [Color.linearGradientPrimary, Color.linearGradientSecondary],
              startPoint: .top,
              endPoint: .bottom)
          )
          .padding(.top, 16)
          .padding(.bottom, 35)
        
        Spacer()
      }
      
      VStack(alignment: .leading, spacing: 0) {
          NavigationLink {
            ProfileView()
              .navigationBarBackButtonHidden(true)
          } label: {
            Image("UsercircleIcon")
            PrimaryBodyText(text: "Your profile")
          }
          .foregroundColor(.appBlack)
          .padding(.bottom, 28)
          
          Button {
            // go noti setting screen
          } label: {
            Image("BellIcon")
            PrimaryBodyText(text: "Notifications")
          }
          .foregroundColor(.appBlack)
          .padding(.bottom, 28)
          
          Button {
            // go noti setting screen
          } label: {
            Image("MobileIcon")
            PrimaryBodyText(text: "Face ID & Password")
          }
          .foregroundColor(.appBlack)
          .padding(.bottom, 32)
        }
        
        Rectangle()
          .frame(width: 345, height: 0.5)
          .background(Color.appBlack)
          .opacity(0.1)
          .padding(.bottom, 32)
        
        VStack(alignment: .leading, spacing: 0) {
          Button {
            // go password setting screen
          } label: {
            Image("ShieldIcon")
            PrimaryBodyText(text: "Security Center")
          }
          .foregroundColor(.appBlack)
          .padding(.bottom, 28)
          
          Button {
            // go password setting screen
          } label: {
            Image("ClipboardIcon")
            PrimaryBodyText(text: "Term & Privacy")
          }
          .foregroundColor(.appBlack)
          .padding(.bottom, 28)
          
          Button {
            // go password setting screen
          } label: {
            Image("ChatIcon")
            PrimaryBodyText(text: "Support & Feedback")
          }
          .foregroundColor(.appBlack)
          .padding(.bottom, 32)
        }
        
        Rectangle()
          .frame(width: 345, height: 0.5)
          .background(Color.appBlack)
          .opacity(0.1)
          .padding(.bottom, 32)
        
        NavigationLink {
          WelcomeCoordinatorView()
            .navigationBarBackButtonHidden(true)
        } label: {
          Image("LogoutIcon")
            .renderingMode(.template)
          PrimaryBodyText(text: "Log out")
        }
        .foregroundColor(.darkOrange)
        
        
        Spacer()
      }
      .padding(.leading, 24)
      .frame(maxWidth: .infinity)
      .background(Color.appWhite)
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
