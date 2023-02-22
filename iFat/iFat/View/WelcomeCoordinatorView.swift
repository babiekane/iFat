//
//  WelcomeCoordinatorView.swift
//  iFat
//
//  Created by yossa on 21/2/2566 BE.
//

import SwiftUI

struct WelcomeCoordinatorView: View {
  
  @State private var destinations: [WelcomeDestination] = []
  
  var body: some View {
    NavigationStack(path: $destinations) {
      WelcomeView(onLoginButtonPressed: navigateToLogin, onSignupButtonPressed: navigateToSignup)
        .navigationDestination(for: WelcomeDestination.self) { destination in
          switch destination {
          case .login:
            LogInView()
              .navigationBarBackButtonHidden(true)
            
          case .signup:
            SignUpView()
              .navigationBarBackButtonHidden(true)
          }
        }
    }
  }
  
  private func navigateToLogin() {
    destinations.append(.login)
  }

  private func navigateToSignup() {
    destinations.append(.signup)
  }
}

enum WelcomeDestination: Hashable {
  case login
  case signup
}
