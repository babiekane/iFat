//
//  BottomSheetView.swift
//  iFat
//
//  Created by CatMeox on 8/3/2566 BE.
//

import SwiftUI

struct BottomSheetView: View {
  @Binding var isShowing: Bool
  @Binding var date: Date
  @Environment(\.dismiss) private var dismiss
  
  var body: some View {
    ZStack(alignment: .bottom) {
      if (isShowing) {
        Color.black
          .opacity(0.3)
          .ignoresSafeArea()
          .onTapGesture {
            isShowing.toggle()
          }
        CalendarView(date: $date, isDatePickerShown: $isShowing)
          .padding(.bottom, 42)
          .transition(.move(edge: .bottom))
          .background(
            Color(uiColor: .white)
          )
          .cornerRadius(16, corners: [.topLeft, .topRight])
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    .ignoresSafeArea()
//    .animation(.easeInOut, value: isShowing)
  }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorners(radius: radius, corners: corners) )
    }
}

struct RoundedCorners: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

//func view() -> AnyView {
//        AnyView(CalendarView())
//    }
