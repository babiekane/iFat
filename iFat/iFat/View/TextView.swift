//
//  TextView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI


struct BigHeadingText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 34, weight: .bold, design: .rounded))
  }
}


struct MediumHeadingText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 28, weight: .bold, design: .rounded))
      .foregroundStyle(Color("DarkOrange"))
  }
}


struct SmallHeadingText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 20, weight: .bold, design: .rounded))
      .foregroundStyle(Color("DarkOrange"))
  }
}


struct PrimaryBodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
    .font(.system(size: 16, weight: .medium, design: .rounded))
  }
}


struct SecondaryBodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 12, weight: .medium, design: .rounded))
  }
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        BigHeadingText(text: "Hello")
        MediumHeadingText(text: "Hello")
        SmallHeadingText(text: "Hello")
          .padding(.bottom, 20)
        PrimaryBodyText(text: "Hello")
        SecondaryBodyText(text: "Hello")
      }
    }
}
