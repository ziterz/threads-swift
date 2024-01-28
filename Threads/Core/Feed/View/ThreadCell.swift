//
//  ThreadCell.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct ThreadCell: View {
  var body: some View {
    VStack {
      HStack(alignment: .top, spacing: 12) {
        Image("user-1")
          .resizable()
          .scaledToFill()
          .frame(width: 40, height: 40)
          .clipShape(Circle())
        
        VStack(alignment: .leading, spacing: 4) {
          HStack {
            Text("ziterz")
              .font(.footnote)
              .fontWeight(.semibold)
            
            Spacer()
            
            Text("10m")
              .font(.caption)
              .foregroundColor(Color(.systemGray3))
            
            Button {
              
            } label: {
              Image(systemName: "ellipsis")
                .foregroundColor(Color(.darkGray))
            }
          }
          
          Text("Hello threads from here!")
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
          .foregroundColor(.black)
          .padding(.vertical, 8)
        }
      }
      
      Divider()
    }
    .padding()
  }
}

#Preview {
  ThreadCell()
}
