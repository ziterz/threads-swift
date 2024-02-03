//
//  CurrentUserProfileView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 03/02/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct CurrentUserProfileView: View {
  @StateObject var viewModel = CurrentUserProfileViewModel()
  @State private var showEditProfile = false
  
  private var currentUser: User? {
    return viewModel.currentUser
  }
  
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
        VStack(spacing: 20) {
          ProfileHeaderView(user: currentUser)
          
          Button {
            showEditProfile.toggle()
          } label: {
            Text("Edit Profile")
              .font(.subheadline)
              .fontWeight(.semibold)
              .foregroundStyle(Color(.black))
              .frame(width: 352, height: 32)
              .background(.white)
              .clipShape(RoundedRectangle(cornerRadius: 8))
              .overlay {
                RoundedRectangle(cornerRadius: 10)
                  .stroke(Color(.systemGray4), lineWidth: 1)
              }
          }
          
          UserContentListView()
        }
      }
      .sheet(isPresented: $showEditProfile, content: {
        if let user = currentUser {
          EditProfileView(user: user)
        }
      })
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            AuthService.shared.signOut()
          } label: {
            Image(systemName: "line.3.horizontal")
          }
        }
      }
      .padding(.horizontal)
    }
  }
}

#Preview {
  CurrentUserProfileView()
}
