//
//  ThreadCell.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct ThreadCell: View {
  let thread: Thread
  
  var body: some View {
    VStack {
      HStack(alignment: .top, spacing: 12) {
        CircularProfileImageView(user: nil, size: .small)
        
        VStack(alignment: .leading, spacing: 4) {
          HStack {
            Text("ziterz")
              .font(.footnote)
              .fontWeight(.semibold)
            
            Spacer()
            
            Text("10m")
              .font(.caption)
              .foregroundStyle(Color(.systemGray3))
            
            Button {
              
            } label: {
              Image(systemName: "ellipsis")
                .foregroundStyle(Color(.darkGray))
            }
          }
          
          Text(thread.caption)
            .font(.footnote)
            .multilineTextAlignment(.leading)
          
          HStack(spacing: 16) {
            Button {
              
            } label: {
              Image(systemName: "heart")
            }
            
            Button {
              
            } label: {
              Image(systemName: "bubble.right")
            }
            
            Button {
              
            } label: {
              Image(systemName: "arrow.rectanglepath")
            }
            
            Button {
              
            } label: {
              Image(systemName: "paperplane")
            }
          }
          .foregroundStyle(Color(.black))
          .padding(.vertical, 8)
        }
      }
      
      Divider()
    }
    .padding()
  }
}

#Preview {
  let thread = Thread(ownerUid: NSUUID().uuidString, caption: "Hello", timestamp: , likes: 0)
  ThreadCell(thread: thread)
}
