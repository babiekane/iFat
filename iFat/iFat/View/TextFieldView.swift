//
//  TextFieldView.swift
//  iFat
//
//  Created by CatMeox on 21/3/2566 BE.
//

import SwiftUI

struct TextFieldView: View {
  @State var weight: String = ""
  
  var body: some View {
      VStack(alignment: .center) {
        HStack {
          SmallHeadingText(text: "Enter your weight")
            .padding(.leading, 24)
        
          Spacer()
        }
        .padding(.bottom, 24)
        
        HStack(alignment: .center) {
          TextField("Type here", text: $weight)
            .frame(width: 200, height: 20)
            .font(.headline)
            .foregroundColor(.darkOrange)
            .padding()
            .background(Color.appWhite.opacity(0.5))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orangeSemiLight, lineWidth: 2))
            .keyboardType(.decimalPad)
          
          PrimaryBodyText(text: "kg")
        }
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
  }

struct TextFieldView_Previews: PreviewProvider {
  static var previews: some View {
    TextFieldView()
  }
}
