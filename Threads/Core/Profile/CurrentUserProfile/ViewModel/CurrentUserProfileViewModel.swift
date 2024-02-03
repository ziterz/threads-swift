//
//  CurrentUserProfileViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI

class CurrentUserProfileViewModel: ObservableObject {
  @Published var currentUser: User?
  private var cancellables = Set<AnyCancellable>()
  
  init() {
    setupSubscribers()
  }
  
  private func setupSubscribers() {
    UserService.shared.$currentUser.sink { [weak self] user in
      self?.currentUser = user
    }.store(in: &cancellables)
  }
}
