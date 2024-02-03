//
//  Thread.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Firebase
import FirebaseFirestoreSwift

struct Thread: Identifiable, Codable {
  @DocumentID var threadId: String?
  let ownerUid: String
  let caption: String
  let timestamp: Timestamp
  let likes: Int
  
  var id: String {
    return threadId ?? NSUUID().uuidString
  }
  
  var user: User?
}
