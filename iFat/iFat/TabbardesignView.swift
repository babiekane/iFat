//
//  TabbardesignView.swift
//  iFat
//
//  Created by CatMeox on 23/1/2566 BE.
//

import SwiftUI

struct TabbardesignView: View {
  @Binding var selectedTab: Tabs
  
  var body: some View {
    HStack(spacing: 80) {
      
      Button {
        // Switch to home
        selectedTab = .home
        
      } label: {

        if selectedTab == .home {
          VStack(alignment: .center, spacing: 4) {
            Image("HomeFillIcon")
              .renderingMode(.template)
              .foregroundColor(Color("White"))
            
            Rectangle()
              .frame(width: 31, height: 3)
              .foregroundColor(Color("White"))
              .cornerRadius(20)
          }
        } else {
          VStack(alignment: .center, spacing: 4) {
            Image("HomeIcon")
              .renderingMode(.template)
              .foregroundColor(Color("White"))
            
            Rectangle()
              .frame(width: 31, height: 3)
              .foregroundColor(Color("OrangeSemiLight"))
              .cornerRadius(20)
          }    
        }
      }
      
      Button {
        // Switch to calendar
        selectedTab = .calendar
      } label: {
        
        if selectedTab == .calendar {
            VStack(alignment: .center, spacing: 4) {
              Image("CalendarFill")
                .renderingMode(.template)
                .foregroundColor(Color("White"))
              Rectangle()
                .frame(width: 31, height: 3)
                .foregroundColor(Color("White"))
                .cornerRadius(20)
            }
        } else {
          VStack(alignment: .center, spacing: 4) {
            Image("CalendarIcon")
              .renderingMode(.template)
              .foregroundColor(Color("White"))
            Rectangle()
              .frame(width: 31, height: 3)
              .foregroundColor(Color("OrangeSemiLight"))
              .cornerRadius(20)
          }
          }
        }
            
      Button {
        // Switch to user
        selectedTab = .user
      } label: {
        
        if selectedTab == .user {
          VStack(alignment: .center, spacing: 4) {
            Image("UserFill")
              .renderingMode(.template)
              .foregroundColor(Color("White"))
            Rectangle()
              .frame(width: 31, height: 3)
              .foregroundColor(Color("White"))
              .cornerRadius(20)
          }
        } else {
          VStack(alignment: .center, spacing: 4) {
            Image("UserIcon")
              .renderingMode(.template)
              .foregroundColor(Color("White"))
            Rectangle()
              .frame(width: 31, height: 3)
              .foregroundColor(Color("OrangeSemiLight"))
              .cornerRadius(20)
          }
       
        }
      }
      
    }
    .frame(width: 353, height: 57)
    .background(Color("OrangeSemiLight"))
    .cornerRadius(20)
    .shadow(
      color: Color("Black")
        .opacity(0.1),
      radius: 12, x: 0, y: 4)
  }

}

struct TabbardesignView_Previews: PreviewProvider {
  static var previews: some View {
    TabbardesignView(selectedTab: .constant(.home))
  }
}
