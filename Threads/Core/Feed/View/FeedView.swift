//
//  FeedView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct FeedView: View {
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
        LazyVStack {
          ForEach(0...10, id: \.self) { thread in
            ThreadCell()
          }
        }
      }
      .refreshable {
        print("DEBUG: Refresh threads")
      }
      .navigationTitle("Threads")
      .navigationBarTitleDisplayMode(.inline)
    }
    .toolbar {
      ToolbarItem(placement: .topBarTrailing) {
        Button {
          
        } label: {
          Image(systemName: "arrow.counterclockwise")
            .foregroundStyle(Color(.black))
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    FeedView()
  }
}
