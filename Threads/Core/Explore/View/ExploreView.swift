//
//  ExploreView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
  @State private var searchText = ""
  @StateObject var viewModel = ExploreViewModel()
  
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVStack {
          ForEach(viewModel.users) { user in
            NavigationLink(value: user) {
              VStack {
                UserCell(user: user)
                
                Divider()
              }
              .padding(.vertical, 4)
            }
          }
        }
      }
      .navigationDestination(for: User.self, destination: { user in
        ProfileView(user: user)
      })
      .navigationTitle("Search")
      .searchable(text: $searchText, prompt: "Search")
    }
  }
}

#Preview {
  ExploreView()
}
