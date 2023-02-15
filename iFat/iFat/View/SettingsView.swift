//
//  SettingsView.swift
//  iFat
//
//  Created by CatMeox on 15/2/2566 BE.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 0) {
        HStack {
          LargeHeadingText(text: "Settings")
            .foregroundStyle(
              LinearGradient(
                colors: [Color("GD2-1"), Color("GD2-2")],
                startPoint: .top,
                endPoint: .bottom)
            )
            .padding(.top, 28)
            .padding(.bottom, 35)

          Spacer()
        }
        VStack(alignment: .leading, spacing: 0) {
          Button {
            // Go profile setting screem
          } label: {
            Image("UsercircleIcon")
            PrimaryBodyText(text: "Your profile")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 28)
          
          Button {
            // go noti setting screen
          } label: {
            Image("BellIcon")
            PrimaryBodyText(text: "Notifications")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 28)
          
          Button {
            // go password setting screen
          } label: {
            Image("LockIcon")
            PrimaryBodyText(text: "Password")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 28)
          
          Button {
            // go noti setting screen
          } label: {
            Image("MobileIcon")
            PrimaryBodyText(text: "Face ID & PIN")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 32)
        }

        Rectangle()
          .frame(width: 345, height: 0.5)
          .background(Color("Black"))
          .opacity(0.1)
          .padding(.bottom, 32)

        VStack(alignment: .leading, spacing: 0) {
          Button {
            // go password setting screen
          } label: {
            Image("ShieldIcon")
            PrimaryBodyText(text: "Security Center")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 28)
          
          Button {
            // go password setting screen
          } label: {
            Image("ClipboardIcon")
            PrimaryBodyText(text: "Term & Privacy")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 28)
          
          Button {
            // go password setting screen
          } label: {
            Image("ChatIcon")
            PrimaryBodyText(text: "Support & Feedback")
          }
          .foregroundColor(Color("Black"))
          .padding(.bottom, 32)
        }

        Rectangle()
          .frame(width: 345, height: 0.5)
          .background(Color("Black"))
          .opacity(0.1)
          .padding(.bottom, 32)

        Button {
          // go password setting screen
        } label: {
          Image("LogoutIcon")
            .renderingMode(.template)
          PrimaryBodyText(text: "Log out")
        }
        .foregroundColor(Color("DarkOrange"))


        Spacer()
      }
      .padding(.leading, 24)

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
