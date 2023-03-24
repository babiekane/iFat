//
//  TextFieldView.swift
//  iFat
//
//  Created by CatMeox on 21/3/2566 BE.
//

import SwiftUI

struct WeightTextFieldView: View {
  @State var weight: String = ""
  @Binding var date: Date
  
  var body: some View {
      VStack(alignment: .center) {
        HStack {
          SmallHeadingText(text: "Enter your weight")
            .padding(.leading, 24)
            .padding(.top, 24)
        
          Spacer()
        }
        .padding(.bottom, 24)
        
        HStack(alignment: .center, spacing: 8) {
          TextField("Type here", text: $weight)
            .frame(width: 300, height: 20)
            .font(.headline)
            .foregroundColor(.darkOrange)
            .padding()
            .background(Color.appWhite.opacity(0.5))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orangeSemiLight, lineWidth: 2))
            .keyboardType(.decimalPad)
          
          PrimaryBodyText(text: "kg")
            .foregroundColor(.appBlack)
        }
        .padding(.bottom, 16)
        
        Button {
          Task {
            await weightUpdate()
          }
        } label: {
          PrimaryBodyText(text: "Save")
            .padding()
            .foregroundColor(.appWhite)
            .frame(width: 120, height: 50)
            .background(Color.orangeSemiLight)
            .clipShape(RoundedRectangle(cornerRadius: 50))
            .shadow(color: Color.appBlack.opacity(0.1),
                    radius: 6, x: 0, y: 4)
        }
        .padding(.bottom, 360)
        
      }
      .toolbar {
        ToolbarItemGroup(placement: .keyboard) {
          Button("Cancel") {
            // Reset the value of the text field
            weight = ""
          }
          .foregroundColor(.red)
          
          Spacer()
          
          Button("Done") {
            // Dismiss the keyboard
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
          }
        }
      }
    }
  
  func weightUpdate() async {
    let weightUpdate = WeightUpdate(weight: weight, date: date)
    guard let encoded = try? JSONEncoder().encode(weightUpdate) else {
      print("Failed to encode weight")
      return
    }
    
    let urlString = "https://51c8-184-22-5-197.ap.ngrok.io/weight_records"
    
    guard let url = URL(string: urlString) else {
      print("bad URL: \(urlString)")
      return
    }
    
    var request = URLRequest(url: url)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

//    let token = UserDefaults.standard.string(forKey: "token")
    let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3QyQGljaGFuZ2UuY29tIiwiaWF0IjoxNjc5MjI4MDY5fQ.IznhqTehVFcgQ_JleLVjOIf86w-P8hrlZMB2mSL06tY"
    request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    request.httpMethod = "POST"
    
    do {
      let (data, response) = try await URLSession.shared.upload(for: request, from: encoded)
      print(data)
      
      if let response = response as? HTTPURLResponse, response.statusCode == 200 {
        print("success")
      }
    } catch {
      print("Checkout failed.")
    }
  }
  }

struct TextFieldView_Previews: PreviewProvider {
  static var previews: some View {
    WeightTextFieldView(date: .constant(Date()))
  }
}
