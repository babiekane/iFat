//
//  SwiftUIView.swift
//  iFat
//
//  Created by CatMeox on 8/3/2566 BE.
//

import SwiftUI

struct CalendarView: View {
  @Binding var date: Date 
  
  var body: some View {
    DatePicker(
      "Start Date",
      selection: $date,
      displayedComponents: [.date]
    )
    .datePickerStyle(.graphical)
    .accentColor(.orangeSemiLight)
  }
}

struct CalendarView_Previews: PreviewProvider {
  static var previews: some View {
    CalendarView(date: .constant(Date()))
  }
}
