//
//  TabbarView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

enum Tabs: Int {
  case home = 0
  case calendar = 1
  case user = 2
}

struct TabbarView: View {
  @Binding var selectedTab: Tabs
  
  var body: some View {
    HStack {
      
      Button {
        // Switch to home
        selectedTab = .home
        
      } label: {
        
        if selectedTab == .home {
          GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
              Image("HomeFillIcon")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
            }
            .frame(width: geo.size.width, height: geo.size.height)
            
            Rectangle()
              .frame(width: geo.size.width/2, height: 3)
              .foregroundColor(Color("White"))
              .padding(.leading, geo.size.width/4)
          }
        } else {
          
          GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
              Image("HomeIcon")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
              
            }
            .frame(width: geo.size.width, height: geo.size.height)
          }
        }
      }
      
      Button {
        // Switch to calendar
        selectedTab = .calendar
      } label: {
        
        if selectedTab == .calendar {
          GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
              Image("CalendarFill")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
            }
            .frame(width: geo.size.width, height: geo.size.height)
            
            Rectangle()
              .frame(width: geo.size.width/2, height: 3)
              .foregroundColor(Color("White"))
              .padding(.leading, geo.size.width/4)
          }
        } else {
          
          GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
              Image("CalendarIcon")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
            }
            .frame(width: geo.size.width, height: geo.size.height)
          }
        }
      }
      
      Button {
        // Switch to user
        selectedTab = .user
      } label: {
        
        if selectedTab == .user {
          GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
              Image("UserFill")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
            }
            .frame(width: geo.size.width, height: geo.size.height)
            
            Rectangle()
              .frame(width: geo.size.width/2, height: 3)
              .foregroundColor(Color("White"))
              .padding(.leading, geo.size.width/4)
          }
        } else {
          GeometryReader { geo in
            VStack(alignment: .center, spacing: 4) {
              Image("UserIcon")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
            }
            .frame(width: geo.size.width, height: geo.size.height)
          }
        }
      }
      
    }
    .frame(width: 353, height: 57)
    .background(Color("OrangeSemiLight"))
    .cornerRadius(20)
    
  }
}

struct TabbarView_Previews: PreviewProvider {
  static var previews: some View {
    TabbarView(selectedTab: .constant(.home))
  }
}
