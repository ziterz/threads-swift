//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize {
  case xxSmall
  case xSmall
  case small
  case medium
  case large
  case xLarge
  
  var dimension: CGFloat {
    switch self {
    case .xxSmall: return 28
    case .xSmall: return 32
    case .small: return 40
    case .medium: return 48
    case .large: return 64
    case .xLarge: return 80
    }
  }
}

struct CircularProfileImageView: View {
  
  var user: User?
  let size: ProfileImageSize
  
  var body: some View {
    if let imageUrl = user?.profileImageUrl {
      KFImage(URL(string: imageUrl))
        .resizable()
        .scaledToFill()
        .frame(width: size.dimension, height: size.dimension)
        .clipShape(Circle())
    } else {
      Image(systemName: "person.circle.fill")
        .resizable()
        .frame(width: size.dimension, height: size.dimension)
        .foregroundStyle(Color(.systemGray4))
               
    }
  }
}

#Preview {
  Group {
    let user = User(id: UUID().uuidString, fullname: "Ziady Mubaraq", email: "ziady.mubaraq@gmail.com", username: "ziterz")
    CircularProfileImageView(user: user, size: .small)
  }
}
