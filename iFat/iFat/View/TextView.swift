//
//  TextView.swift
//  iFat
//
//  Created by CatMeox on 25/1/2566 BE.
//

import SwiftUI


struct LargeHeadingText: View {
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
      
  }
}


struct SmallHeadingText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 20, weight: .bold, design: .rounded))
      .foregroundColor(.darkOrange)
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

struct TertiaryBodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.system(size: 16, weight: .regular, design: .rounded))
  }
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        LargeHeadingText(text: "Hello")
        MediumHeadingText(text: "Hello")
        SmallHeadingText(text: "Hello")
          .padding(.bottom, 20)
        PrimaryBodyText(text: "Hello")
        TertiaryBodyText(text: "Hello")
        SecondaryBodyText(text: "Hello")
      }
    }
}
