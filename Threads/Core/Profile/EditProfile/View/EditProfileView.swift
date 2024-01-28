//
//  EditProfileView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct EditProfileView: View {
  @State private var bio: String = ""
  @State private var link: String = ""
  @State private var isPrivateProfile: Bool = false
  
  var body: some View {
    NavigationStack {
      ZStack {
        Color(.systemGroupedBackground)
          .edgesIgnoringSafeArea([.bottom, .horizontal])
        
        VStack {
          HStack {
            VStack(alignment: .leading) {
              Text("Name")
                .fontWeight(.semibold)
              
              Text("Ziady Mubaraq")
            }
            
            Spacer()
            
            CircularProfileImageView()
          }
          
          Divider()
          
          VStack(alignment: .leading) {
            Text("Bio")
              .fontWeight(.semibold)
            
            TextField("Enter your bio..", text: $bio, axis: .vertical)
          }
          
          Divider()
          
          VStack(alignment: .leading) {
            Text("Link")
              .fontWeight(.semibold)
            
            TextField("Add link..", text: $link)
          }
          
          Divider()
          
          Toggle("Private profile", isOn: $isPrivateProfile)
          
        }
        .font(.footnote)
        .padding()
        .background(.white)
        .overlay {
          RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 1)
        }
        .padding()
      }
      .navigationTitle("Edit Profile")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          Button("Cancel") {
            
          }
          .font(.subheadline)
          .foregroundStyle(Color(.black))
        }
        
        ToolbarItem(placement: .topBarTrailing) {
          Button("Done") {
            
          }
          .font(.subheadline)
          .fontWeight(.semibold)
          .foregroundStyle(Color(.black))
        }
      }
    }
  }
}

#Preview {
  EditProfileView()
}
