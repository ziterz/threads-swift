//
//  AuthService.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
  
  @Published var userSession: FirebaseAuth.User?
  
  static let shared = AuthService()
  
  init() {
    self.userSession = Auth.auth().currentUser
  }
  
  @MainActor
  func login(withEmail email: String, password: String) async throws {
    do {
      let result = try await Auth.auth().signIn(withEmail: email, password: password)
      self.userSession = result.user
      print("DEBUG: Login \(result.user.uid)")
    } catch {
      print("DEBUG: Failed to login with error \(error.localizedDescription)")
    }
  }
  
  @MainActor
  func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      self.userSession = result.user
      print("DEBUG: Created user \(result.user.uid)")
    } catch {
      print("DEBUG: Failed to create user with error \(error.localizedDescription)")
    }
  }
  
  func signOut() {
    try? Auth.auth().signOut()
    self.userSession = nil
  }
}
