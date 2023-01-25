//
//  TextView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI

struct Heading34Text: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 34, weight: .bold, design: .rounded))
  }
}


struct Heading20Text: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 20, weight: .bold, design: .rounded))
      .foregroundStyle(Color("DarkOrange"))
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.leading, 24)
      .padding(.bottom, 4)

  }
}


struct Body16MediumText: View {
  var text: String
  
  var body: some View {
    Text(text)
    .font(.system(size: 16, weight: .medium, design: .rounded))
    
  }
}


struct Body12SemiBoldText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 12, weight: .semibold, design: .rounded))
  }
}
  
struct TextView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        Heading34Text(text: "Hello")
        Heading20Text(text: "Hello")
        Body16MediumText(text: "Hello")
        Body12SemiBoldText(text: "Hello")
      }
    }
}
