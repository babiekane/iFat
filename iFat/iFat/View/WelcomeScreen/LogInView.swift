//
//  LogInView.swift
//  iFat
//
//  Created by CatMeox on 26/1/2566 BE.
//

import SwiftUI

struct LogInView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var showPassword: Bool = false
  
  
  @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
  
  var body: some View {
    GeometryReader { geometry in
      VStack(alignment: .leading, spacing: 0) {
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }, label: {
          Image(systemName: "chevron.left")
            .bold()
            .foregroundColor(.orangeSemiDark)
            .padding(.leading, 24)
          MediumHeadingText(text: "Log in")
            .foregroundColor(.darkOrange)
            .padding(.horizontal, 16)
        })
        .padding(.bottom, 40)
        .padding(.top, 28)
        
        
        
        VStack(alignment: .leading, spacing: 0) {
          PrimaryBodyText(text: "Email")
            .padding(.bottom, 4)
            .foregroundColor(.appBlack)
          TextField(
            "",
            text: $email
          )
          .foregroundColor(.appBlack)
          .disableAutocorrection(true)
          .padding(8)
          .frame(width: geometry.size.width - 48, height: 45)
          .overlay {
            RoundedRectangle(cornerRadius: 5)
              .stroke(Color.appBlack.opacity(0.1), lineWidth: 1)
          }
          .padding(.bottom, 32)
          
          PrimaryBodyText(text: "Password")
            .padding(.bottom, 4)
            .foregroundColor(.appBlack)
          HStack {
            Group {
              if showPassword {
                TextField("", text: $password)
              } else {
                SecureField("", text: $password)
              }
            }
            
            Button(action: {
              showPassword.toggle()
            }) {
              Image(systemName: self.showPassword ? "eye" : "eye.slash")
                .accentColor(.gray)
            }
          }
          .foregroundColor(.appBlack)
          .disableAutocorrection(true)
          .padding(8)
          .frame(width: geometry.size.width - 48, height: 45)
          .overlay {
            RoundedRectangle(cornerRadius: 5)
              .stroke(Color.appBlack.opacity(0.1), lineWidth: 1)
          }
          .padding(.bottom, 20)
          
          Button {
            // go to forget password
          } label: {
            SecondaryBodyText(text: "Forget password?")
              .foregroundColor(.orangeSemiLight)
              .frame(maxWidth: .infinity, alignment: .trailing)
              .padding(.trailing, 24)
          }
          .padding(.bottom, 48)
          
          Button {
            // go to home screen
          } label: {
            PrimaryBodyText(text: "Log in")
          }
          .frame(width: geometry.size.width - 48, height: 51)
          .background(Color.orangeSemiLight)
          .foregroundColor(.appWhite)
          .clipShape(RoundedRectangle(cornerRadius: 8))
          .shadow(color: Color.appBlack.opacity(0.1),
                  radius: 6, x: 0, y: 4)
          
        }
        .padding(.leading, 24)
        
        Spacer()
      }
      .frame(maxWidth: .infinity)
      .background(Color.appWhite)
    }
  }
}

struct LogInView_Previews: PreviewProvider {
  static var previews: some View {
    LogInView()
  }
}
