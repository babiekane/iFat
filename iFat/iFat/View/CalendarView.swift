//
//  SwiftUIView.swift
//  iFat
//
//  Created by CatMeox on 8/3/2566 BE.
//

import SwiftUI

struct CalendarView: View {
  @Binding var date: Date
  @Binding var isDatePickerShown : Bool
  
  var body: some View {
    DatePicker(
      "Start Date",
      selection: $date,
      displayedComponents: [.date]
    )
    .onChange(of: date, perform: { _ in
        self.isDatePickerShown = false
    })
    .datePickerStyle(.graphical)
    .padding()
    .background(Color.appWhite, in: RoundedRectangle(cornerRadius: 20))
    .accentColor(.orangeSemiLight)
  }
}

struct CalendarView_Previews: PreviewProvider {
  static var previews: some View {
    CalendarView(date: .constant(Date()), isDatePickerShown: .constant(false))
  }
}
