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
        NavigationBar(title: "Log in", backAction: {
          presentationMode.wrappedValue.dismiss()
        })
        .padding(.bottom, 40)
        
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
          .textInputAutocapitalization(.never)
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
            Task {
             await logIn()
            }
          } label: {
            PrimaryBodyText(text: "Log in")
              .frame(width: geometry.size.width - 48, height: 51)
              .background(Color.orangeSemiLight)
              .foregroundColor(.appWhite)
              .clipShape(RoundedRectangle(cornerRadius: 8))
              .shadow(color: Color.appBlack.opacity(0.1),
                      radius: 6, x: 0, y: 4)
          }

        }
        .padding(.leading, 24)
        
        Spacer()
      }
      .frame(maxWidth: .infinity)
      .background(Color.appWhite)
    }
  }
  
  func logIn() async {
    let login = Login(username: email, password: password)
    guard let encoded = try? JSONEncoder().encode(login) else {
      print("Failed to encode login")
      return
    }
    
    let urlString = "https://fba9-184-22-5-28.ap.ngrok.io/login"
    
    guard let url = URL(string: urlString) else {
      print("bad URL: \(urlString)")
      return
    }
    
    var request = URLRequest(url: url)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "POST"
    
    do {
      let (data, _) = try await URLSession.shared.upload(for: request, from: encoded)
      print(data)
      
      let r = try JSONDecoder().decode(Response.self, from: data)
      let token = r.data.token
      UserDefaults.standard.set(token, forKey: "token")
      print(token)
      
      let savedToken = UserDefaults.standard.string(forKey: "token")
      print(savedToken!)
    } catch {
      print("Checkout failed.")
    }
  }
  
  
  
}

struct LogInView_Previews: PreviewProvider {
  static var previews: some View {
    LogInView()
  }
}
