//
//  ContentView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

struct ContentView: View {
  
  @State var selectedTab: Tabs = .home
  
    var body: some View {
      VStack {
        
        SignUpView()
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
