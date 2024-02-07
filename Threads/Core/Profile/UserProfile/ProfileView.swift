//
//  ProfileView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
  let user: User
  
  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(spacing: 20) {
        ProfileHeaderView(user: user)
        
        Button {
          
        } label: {
          Text("Follow")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(Color(.white))
            .frame(width: 352, height: 32)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
        
        UserContentListView(user: user)
      }
    }
    .navigationBarTitleDisplayMode(.inline)
    .padding(.horizontal)
  }
}

#Preview {
  let user = User(id: NSUUID().uuidString, fullname: "Ziady Mubaraq", email: "ziady.mubaraq@gmail.com", username: "ziterz")
  return ProfileView(user: user)
}
