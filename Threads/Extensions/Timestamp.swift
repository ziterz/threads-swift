//
//  Timestamp.swift
//  Threads
//
//  Created by Ziady Mubaraq on 06/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation
import Firebase

extension Timestamp {
  func timestampString() -> String {
    let formatter = DateComponentsFormatter()
    formatter.allowedUnits = [.second, .minute, .hour, .day, .weekOfMonth]
    formatter.maximumUnitCount = 1
    formatter.unitsStyle = .abbreviated
    return formatter.string(from: self.dateValue(), to: Date()) ?? ""
  }
}
