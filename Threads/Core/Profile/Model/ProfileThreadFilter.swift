//
//  ProfileThreadFilter.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
  case threads
  case replies
  
  var title: String {
    switch self {
    case .threads: return "Threads"
    case .replies: return "Replies"
    }
  }
  
  var id: Int { return self.rawValue }
}
