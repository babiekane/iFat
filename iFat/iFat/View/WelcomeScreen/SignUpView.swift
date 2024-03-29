//
//  SignUpView.swift
//  iFat
//
//  Created by CatMeox on 26/1/2566 BE.
//

import SwiftUI

struct SignUpView: View {
  @State private var username: String = ""
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var showPassword: Bool = false
  @State private var isOn = false
  
  @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
  
  
  var body: some View {
    GeometryReader { geometry in
      VStack(spacing: 0) {
        
        NavigationBar(title: "Sign up", backAction: {
          presentationMode.wrappedValue.dismiss()
        })
        .padding(.bottom, 40)
        
        
        VStack(alignment: .leading, spacing: 0) {
          PrimaryBodyText(text: "Name")
            .padding(.bottom, 4)
            .foregroundColor(.appBlack)
          TextField(
            "",
            text: $username
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
          .padding(.bottom, 32)
          
          Toggle("I agree with terms and conditions", isOn: $isOn)
            .foregroundColor(.appBlack)
            .font(.system(size: 14, weight: .regular, design: .rounded))
            .toggleStyle(CheckToggleStyle())
            .padding(.bottom, 50)
          
          
          Button {
            // go to home screen
          } label: {
            PrimaryBodyText(text: "Sign up")
              .frame(width: geometry.size.width - 48, height: 51)
              .background(Color("OrangeSemiLight"))
              .foregroundColor(.appWhite)
              .clipShape(RoundedRectangle(cornerRadius: 8))
              .shadow(color: Color.appBlack.opacity(0.1),
                      radius: 6, x: 0, y: 4)
          }
        }
        
        Spacer()
      }
      .frame(maxWidth: .infinity)
      .background(Color.appWhite)
    }
  }
}


struct CheckToggleStyle: ToggleStyle {
  func makeBody(configuration: Configuration) -> some View {
    Button {
      configuration.isOn.toggle()
    } label: {
      Label {
        configuration.label
      } icon: {
        Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
          .foregroundColor(configuration.isOn ? Color("DarkOrange") : .secondary)
          .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
          .imageScale(.large)
      }
    }
    .buttonStyle(PlainButtonStyle())
  }
}

struct SignUpView_Previews: PreviewProvider {
  static var previews: some View {
    SignUpView()
    
  }
}
