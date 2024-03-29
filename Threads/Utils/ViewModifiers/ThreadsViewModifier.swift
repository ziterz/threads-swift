//
//  ThreadsViewModifier.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.subheadline)
      .padding(12)
      .background(Color(.systemGray6))
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .padding(.horizontal, 24)
  }
}

struct ThreadsButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.subheadline)
      .fontWeight(.semibold)
      .foregroundStyle(Color(.white))
      .frame(width: 352, height: 44)
      .background(.black)
      .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}
