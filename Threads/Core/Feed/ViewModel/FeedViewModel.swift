//
//  FeedViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

class FeedViewModel: ObservableObject {
  @Published var threads = [Thread]()
  
  init() {
    Task { try await fetchThreads() }
  }
  
  func fetchThreads() async throws {
    self.threads = try await ThreadService.fetchThreads()
  }
}
