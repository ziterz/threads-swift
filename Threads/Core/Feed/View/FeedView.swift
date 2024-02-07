//
//  FeedView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct FeedView: View {
  
  @StateObject var viewModel = FeedViewModel()
  
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
        LazyVStack {
          ForEach(viewModel.threads) { thread in
            ThreadCell(thread: thread)
          }
        }
      }
      .refreshable {
        Task { try await viewModel.fetchThreads() }
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
