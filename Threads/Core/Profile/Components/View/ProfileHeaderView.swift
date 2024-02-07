//
//  ProfileHeaderView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
  let user: User?
  
  init(user: User?) {
    self.user = user
  }
  
  var body: some View {
    HStack(alignment: .top) {
      VStack(alignment: .leading, spacing: 12) {
        VStack(alignment: .leading, spacing: 4) {
          Text(user?.fullname ?? "")
            .font(.title2)
            .fontWeight(.semibold)
          
          Text(user?.username ?? "")
            .font(.subheadline)
        }
        
        if let bio = user?.bio {
          Text(bio)
            .font(.footnote)
        }
        
        Text("666 followers")
          .font(.caption)
          .foregroundStyle(Color(.gray))
      }
      
      Spacer()
      
      CircularProfileImageView(user: user, size: .medium)
    }
  }
}

#Preview {
  let user = User(id: NSUUID().uuidString, fullname: "Ziady Mubaraq", email: "ziady.mubaraq@gmail.com", username: "ziterz")
  return ProfileHeaderView(user: user)
}
