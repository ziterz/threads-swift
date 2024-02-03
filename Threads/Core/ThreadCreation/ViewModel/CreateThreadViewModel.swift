//
//  CreateThreadViewModel.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation
import Firebase

class CreateThreadViewModel: ObservableObject {
  
  func uploadThread(caption: String) async throws {
    guard let uid = Auth.auth().currentUser?.uid else { return }
    let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
    try await ThreadService.uploadThread(thread)
  }
}
