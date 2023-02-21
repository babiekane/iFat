//
//  WelcomeView.swift
//  iFat
//
//  Created by CatMeox on 26/1/2566 BE.
//

import SwiftUI

struct WelcomeView: View {
  
  init(onLoginButtonPressed: @escaping () -> Void = {}, onSignupButtonPressed: @escaping () -> Void = {}) {
    self.onLoginButtonPressed = onLoginButtonPressed
    self.onSignupButtonPressed = onSignupButtonPressed
  }

  private var onLoginButtonPressed: () -> Void
  private var onSignupButtonPressed: () -> Void
  
  var body: some View {
    VStack(spacing: 0) {
      Text("iChange")
        .font(.system(size: 54, weight: .bold, design: .rounded))
        .foregroundStyle(
          LinearGradient(
            colors: [Color.linearGradientPrimary, Color.linearGradientSecondary],
            startPoint: .top,
            endPoint: .bottom
          )
        )
        .padding(.top, 273)
      
      PrimaryBodyText(text: """
                      Lorem ipsum dolor sit amet,
                      consectetur holaner adipiscing elit.
                      """)
      .foregroundColor(.appBlack)
      .multilineTextAlignment(.center)
      .padding(.top, 92)
      
      Button {
        onLoginButtonPressed()
      } label: {
        PrimaryBodyText(text: "Log in")
          .frame(width: 345, height: 51)
          .background(Color.orangeSemiLight)
          .foregroundColor(.appWhite)
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .padding(.top, 36)
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
      }

      Button {
        onSignupButtonPressed()
      } label: {
        PrimaryBodyText(text: "Sign up")
          .frame(width: 345, height: 51)
          .background(Color.appWhite)
          .foregroundColor(.appBlack)
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .padding(.top, 12)
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
      }
      
      HStack {
        Rectangle()
          .fill(Color.appBlack)
          .opacity(0.5)
          .frame(width: 115, height: 0.5)
        Text("Continue with")
          .font(.system(size: 14, weight: .regular, design: .rounded))
          .foregroundColor(.appBlack)
          .opacity(0.5)
          .padding(.top, 20)
          .padding(.bottom, 20)
        Rectangle()
          .fill(Color.appBlack)
          .opacity(0.5)
          .frame(width: 115, height: 0.5)
      }
      
      HStack {
        Button {
          // log in with apple
        } label: {
          RoundedRectangle(cornerRadius: 8)
            .fill(Color.appWhite)
            .frame(width: 78, height: 50)
            .shadow(color: Color.appBlack.opacity(0.1),
                    radius: 6, x: 0, y: 4)
            .overlay (
              Image("AppleLogo")
                .resizable()
                .frame(width: 25, height: 25)
            )
        }
        
        Button {
          // log in with facebook
        } label: {
          RoundedRectangle(cornerRadius: 8)
            .fill(Color.appWhite)
            .frame(width: 78, height: 50)
            .shadow(color: Color.appBlack.opacity(0.1),
                    radius: 6, x: 0, y: 4)
            .overlay (
              Image("FBLogo")
                .resizable()
                .frame(width: 15, height: 23)
            )
        }
        
        Button {
          // log in with gmail
        } label: {
          RoundedRectangle(cornerRadius: 8)
            .fill(Color.appWhite)
            .frame(width: 78, height: 50)
            .shadow(color: Color.appBlack.opacity(0.1),
                    radius: 6, x: 0, y: 4)
            .overlay (
              Image("GmailLogo")
                .resizable()
                .frame(width: 25, height: 25)
            )
        }
        
        Button {
          // log in with twitter
        } label: {
          RoundedRectangle(cornerRadius: 8)
            .fill(Color.appWhite)
            .frame(width: 78, height: 50)
            .shadow(color: Color.appBlack.opacity(0.1),
                    radius: 6, x: 0, y: 4)
            .overlay (
              Image("TwitterLogo")
                .resizable()
                .frame(width: 25, height: 25)
            )
        }
      }
      
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .background(Color.appWhite)
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
