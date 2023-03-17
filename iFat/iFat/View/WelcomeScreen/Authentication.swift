//
//  Authentication.swift
//  iFat
//
//  Created by CatMeox on 3/3/2566 BE.
//

import SwiftUI

class Authentication: ObservableObject {
  @Published var isValidated = false
  
  func updateValidation(success: Bool) {
    withAnimation {
      isValidated = success
    }
  }
}
