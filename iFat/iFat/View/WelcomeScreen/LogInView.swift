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
  
  
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      HStack (spacing: 28) {
        Button {
          // back to welcome screen
        } label: {
          Image(systemName: "chevron.left")
            .bold()
            .foregroundColor(Color("OrangeSemiDark"))
            .padding(.leading, 24)
        }
        MediumHeadingText(text: "Log in")
        
        Spacer()
      }
      .padding(.bottom, 40)
      .padding(.top, 28)
      
      VStack(alignment: .leading, spacing: 0) {
        PrimaryBodyText(text: "Email")
          .padding(.bottom, 4)
          .foregroundColor(Color("Black"))
        TextField(
          "",
          text: $email
        )
        .disableAutocorrection(true)
        .padding(8)
        .frame(width: 345, height: 34)
        .overlay {
          RoundedRectangle(cornerRadius: 5)
            .stroke(Color("Black").opacity(0.1), lineWidth: 1)
        }
        .padding(.bottom, 32)
        
        PrimaryBodyText(text: "Password")
          .padding(.bottom, 4)
          .foregroundColor(Color("Black"))
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
            Image(systemName: self.showPassword ? "eye.slash" : "eye")
              .accentColor(.gray)
          }
        }
        .disableAutocorrection(true)
        .padding(8)
        .frame(width: 345, height: 34)
        .overlay {
          RoundedRectangle(cornerRadius: 5)
            .stroke(Color("Black").opacity(0.1), lineWidth: 1)
        }
        .padding(.bottom, 20)
        
        Button {
          // go to forget password
        } label: {
          SecondaryBodyText(text: "Forget password?")
            .foregroundColor(Color("OrangeSemiLight"))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 24)
        }
        .padding(.bottom, 48)
        
        Button {
          // go to home screen
        } label: {
          PrimaryBodyText(text: "Log in")
        }
        .frame(width: 345, height: 40)
        .background(Color("OrangeSemiLight"))
        .foregroundColor(Color("White"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
      }
      .padding(.leading, 24)
      
      Spacer()
    }
  }
}

struct LogInView_Previews: PreviewProvider {
  static var previews: some View {
    LogInView()
  }
}
