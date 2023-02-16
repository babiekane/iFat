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
    VStack(alignment: .leading, spacing: 0) {
      
      Button(action: {
        presentationMode.wrappedValue.dismiss()
      }, label: {
        Image(systemName: "chevron.left")
          .bold()
          .foregroundColor(Color("OrangeSemiDark"))
          .padding(.leading, 24)
        MediumHeadingText(text: "Log in")
          .padding(.horizontal, 16)
      })
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
        .frame(width: 345, height: 45)
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
            Image(systemName: self.showPassword ? "eye" : "eye.slash")
              .accentColor(.gray)
          }
        }
        .disableAutocorrection(true)
        .padding(8)
        .frame(width: 345, height: 45)
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
        .frame(width: 345, height: 51)
        .background(Color("OrangeSemiLight"))
        .foregroundColor(Color("White"))
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(color: Color("Black").opacity(0.1),
                radius: 6, x: 0, y: 4)
        
      }
      .padding(.leading, 24)
      
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .background(Color("White"))
  }
}

struct LogInView_Previews: PreviewProvider {
  static var previews: some View {
    LogInView()
  }
}
