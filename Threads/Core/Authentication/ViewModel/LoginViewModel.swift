//
//  LoginViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 02/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

class LoginViewModel: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  
  @MainActor
  func login() async throws {
    try await AuthService.shared.login(withEmail: email, password: password)
  }
}
