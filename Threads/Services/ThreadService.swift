//
//  ThreadService.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct ThreadService {
  
  static func uploadThread(_ thread: Thread) async throws {
    guard let threadData = try? Firestore.Encoder().encode(thread) else { return }
    try await Firestore.firestore().collection("threads").addDocument(data: threadData)
  }
}
