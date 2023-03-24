//
//  BottomSheetWeightTextFieldView.swift
//  iFat
//
//  Created by CatMeox on 21/3/2566 BE.
//

import SwiftUI

struct BottomSheetTextFieldView: View {
  @Binding var isShowingTextFieldView: Bool
  @Binding var weight: String
  @Binding var date: Date
  
  var body: some View {
    ZStack(alignment: .bottom) {
      if (isShowingTextFieldView) {
        Color.black
          .opacity(0.3)
          .ignoresSafeArea()
          .onTapGesture {
            isShowingTextFieldView.toggle()
          }
        WeightTextFieldView(weight: weight, date: $date)
          .padding(.bottom, 42)
          .transition(.move(edge: .bottom))
          .background(Color.appWhite)
          .cornerRadius(20, corners: [.topLeft, .topRight])
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    .ignoresSafeArea()
    .animation(.easeOut , value: isShowingTextFieldView)
  }
}
