//
//  CircularProfileImageView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
      Image("user-1")
        .resizable()
        .scaledToFill()
        .frame(width: 40, height: 40)
        .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
