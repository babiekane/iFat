//
//  MainTabView.swift
//  iFat
//
//  Created by CatMeox on 16/2/2566 BE.
//

import SwiftUI

struct MainTabView: View {
  
  @State private var currentTab: Tabs = .home
  
  init() {
    UITabBar.appearance().isHidden = true
  }
  
  var body: some View {
    GeometryReader { geometry in
    NavigationStack {
      ZStack {
        TabView(selection: $currentTab) {
          HomeView()
            .tag(Tabs.home)
            .tabItem {
              Label("Home", systemImage: "house")
            }
          
          EvolutionView()
            .tag(Tabs.calendar)
            .tabItem {
              Label("Calendar", systemImage: "calendar")
            }
          
          SettingsView()
            .tag(Tabs.user)
            .tabItem{
              Label("Settings", systemImage: "gear")
            }
        }
        
        VStack {
          Spacer()
          
          TabbarView(
            selectedTab: $currentTab,
            screenWidth: geometry.size.width)
          }
        }
      }
    }
  }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
