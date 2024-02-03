//
//  CreateThreadView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct CreateThreadView: View {
  @StateObject var viewModel = CreateThreadViewModel()
  @State private var caption = ""
  @Environment(\.dismiss) var dismiss
  
  private var user: User? {
    return UserService.shared.currentUser
  }
  
  var body: some View {
    NavigationStack {
      VStack {
        HStack(alignment: .top) {
          CircularProfileImageView(user: nil, size: .small)
          
          VStack(alignment: .leading, spacing: 4) {
            Text("ziterz")
              .fontWeight(.semibold)
            
            TextField("Start a thread...", text: $caption, axis: .vertical)
          }
          .font(.footnote)
          
          Spacer()
          
          if !caption.isEmpty {
            Button {
              caption = ""
            } label: {
              Image(systemName: "xmark")
                .resizable()
                .frame(width: 12, height: 12)
                .foregroundStyle(Color(.gray))
            }
          }
        }
        
        Spacer()
      }
      .padding()
      .navigationTitle("New Thread")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .topBarLeading) {
          Button("Cancel") {
            dismiss()
          }
          .font(.subheadline)
          .foregroundStyle(Color(.black))
        }
        
        ToolbarItem(placement: .topBarTrailing) {
          Button("Post") {
            Task {
              try await viewModel.uploadThread(caption: caption)
              dismiss()
            }
          }
          .opacity(caption.isEmpty ? 0.5 : 1.0)
          .disabled(caption.isEmpty)
          .font(.subheadline)
          .fontWeight(.semibold)
          .foregroundStyle(Color(.black))
        }
      }
    }
  }
}

#Preview {
  CreateThreadView()
}
