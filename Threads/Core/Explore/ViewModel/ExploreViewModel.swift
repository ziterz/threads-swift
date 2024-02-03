//
//  ExploreViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

class ExploreViewModel: ObservableObject {
  @Published var users = [User]()
  
  init() {
    Task { try await fetchUsers() }
  }
  
  @MainActor
  private func fetchUsers() async throws {
    self.users = try await UserService.fetchUsers()
  }
}
