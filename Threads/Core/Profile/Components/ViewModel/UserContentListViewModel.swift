//
//  UserContentListViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 06/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

class UserContentListViewModel: ObservableObject {
  @Published var threads = [Thread]()
  
  let user: User
  
  init(user: User) {
    self.user = user
  }
  
  @MainActor
  func fetchUserThreads() async throws {
    var threads = try await ThreadService.fetchUserThreads(uid: user.id)
    
    for i in 0 ..< threads.count {
      threads[i].user = self.user
    }
    
    self.threads = threads
  }
}
