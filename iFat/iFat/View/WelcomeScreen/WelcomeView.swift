//
//  WelcomeView.swift
//  iFat
//
//  Created by CatMeox on 26/1/2566 BE.
//

import SwiftUI

struct WelcomeView: View {
  
  var body: some View {
    NavigationStack {
      VStack(spacing: 0) {
        Text("iChange")
          .font(.system(size: 54, weight: .bold, design: .rounded))
          .foregroundStyle(
            LinearGradient(
              colors: [Color("GD2-1"), Color("GD2-2")],
              startPoint: .top,
              endPoint: .bottom
            )
          )
          .padding(.top, 273)
        
        PrimaryBodyText(text: """
                        Lorem ipsum dolor sit amet,
                        consectetur holaner adipiscing elit.
                        """)
        .foregroundColor(Color("Black"))
        .multilineTextAlignment(.center)
        .padding(.top, 92)
        
        
        NavigationLink{
          LogInView()
            .navigationBarBackButtonHidden(true)
        } label: {
          PrimaryBodyText(text: "Log in")
            .frame(width: 345, height: 51)
            .background(Color("OrangeSemiLight"))
            .foregroundColor(Color("White"))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 36)
            .shadow(color: Color("Black").opacity(0.1),
                    radius: 6, x: 0, y: 4)
        }
        
        NavigationLink{
          SignUpView()
            .navigationBarBackButtonHidden(true)
        } label: {
          PrimaryBodyText(text: "Sign up")
            .frame(width: 345, height: 51)
            .background(Color("White"))
            .foregroundColor(Color("Black"))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.top, 12)
            .shadow(color: Color("Black").opacity(0.1),
                    radius: 6, x: 0, y: 4)
        }
        
        HStack {
          Rectangle()
            .fill(Color("Black"))
            .opacity(0.5)
            .frame(width: 115, height: 0.5)
          Text("Continue with")
            .font(.system(size: 14, weight: .regular, design: .rounded))
            .foregroundColor(Color("Black"))
            .opacity(0.5)
            .padding(.top, 20)
            .padding(.bottom, 20)
          Rectangle()
            .fill(Color("Black"))
            .opacity(0.5)
            .frame(width: 115, height: 0.5)
        }
        
        HStack {
          Button {
            // log in with apple
          } label: {
            RoundedRectangle(cornerRadius: 8)
              .fill(Color("White"))
              .frame(width: 78, height: 50)
              .shadow(color: Color("Black").opacity(0.1),
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
              .fill(Color("White"))
              .frame(width: 78, height: 50)
              .shadow(color: Color("Black").opacity(0.1),
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
              .fill(Color("White"))
              .frame(width: 78, height: 50)
              .shadow(color: Color("Black").opacity(0.1),
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
              .fill(Color("White"))
              .frame(width: 78, height: 50)
              .shadow(color: Color("Black").opacity(0.1),
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
      .background(Color("White"))
      
    }
  }
}




struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
