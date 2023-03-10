//
//  MainTabView.swift
//  iFat
//
//  Created by CatMeox on 16/2/2566 BE.
//

import SwiftUI

struct MainTabView: View {
  @State var authentication = Authentication()
  @State private var currentTab: Tabs = .home
  
  @State var isShowingBottomSheet = false
  @State var date = Date()
  
  init() {
    UITabBar.appearance().isHidden = true
  }
  
  var body: some View {
//    if authentication.isValidated {
    GeometryReader { geometry in
        NavigationStack {
          ZStack {
            TabView(selection: $currentTab) {
              HomeView(isShowingBottomSheet: $isShowingBottomSheet, date: $date)
                .tag(Tabs.home)
                .tabItem {
                  Label("Home", systemImage: "house")
                }
              
              EvolutionView(isShowingBottomSheet: $isShowingBottomSheet, date: $date)
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
            
            BottomSheetView(isShowing: $isShowingBottomSheet, date: $date)
          }
        }
    }
//      .environmentObject(authentication)
//    } else {
//      WelcomeCoordinatorView()
//        .environmentObject(authentication)
//    }
  }
}

struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
  }
}
