//
//  UserCell.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct UserCell: View {
  let user: User
  var body: some View {
    HStack {
      CircularProfileImageView(user: user, size: .small)
      
      VStack(alignment: .leading, spacing: 4) {
        Text(user.username)
          .fontWeight(.semibold)
        
        Text(user.fullname)
      }
      .font(.footnote)
      
      Spacer()
      
      Text("Follow")
        .font(.subheadline)
        .fontWeight(.semibold)
        .frame(width: 100, height: 32)
        .overlay {
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 1)
        }
    }
    .padding(.horizontal)
  }
}

#Preview() {
  UserCell(user: User(id: NSUUID().uuidString, fullname: "Ziady Mubaraq", email: "ziady.mubaraq@gmail.com", username: "ziterz"))
}
