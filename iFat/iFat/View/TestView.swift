//
//  TestView.swift
//  iFat
//
//  Created by CatMeox on 8/3/2566 BE.
//

import SwiftUI

struct TestView: View {
    @State private var isDatePickerShown = false
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            Button(action: {
                self.isDatePickerShown = true
            }) {
                Text("Show date picker")
            }
            .sheet(isPresented: $isDatePickerShown) {
                DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(.graphical)
                    .onChange(of: selectedDate, perform: { _ in
                        self.isDatePickerShown = false
                    })
            }

            Text("Selected date: \(selectedDate, formatter: dateFormatter)")
        }
    }

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}
