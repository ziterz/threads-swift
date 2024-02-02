//
//  ContentViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 02/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation
import Combine
import Firebase

class ContentViewModel: ObservableObject {
  @Published var userSession: FirebaseAuth.User?
  private var cancellable = Set<AnyCancellable>()
  
  init() {
    setupSubscribers()
  }
  
  private func setupSubscribers() {
    AuthService.shared.$userSession.sink { [weak self] userSession in
      self?.userSession = userSession
    }.store(in: &cancellable)
  }
}
