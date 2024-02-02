//
//  User.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation

struct User: Identifiable, Codable {
  let id: String
  let fullname: String
  let email: String
  let username: String
  var profileImageUrl: String?
  var bio: String?
}
