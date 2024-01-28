//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

class RegistrationViewModel: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  @Published var fullname = ""
  @Published var username = ""
  
  @MainActor
  func createUser() async throws {
    try await AuthService.shared.createUser(
      withEmail: email,
      password: password,
      fullname: fullname,
      username: username
    )
  }
}
