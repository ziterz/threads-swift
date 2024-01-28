//
//  UserCell.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct UserCell: View {
  var body: some View {
    HStack {
      CircularProfileImageView()
      
      VStack(alignment: .leading) {
        Text("ziterz")
          .fontWeight(.semibold)
        
        Text("Ziady Mubaraq")
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

#Preview {
  UserCell()
}
