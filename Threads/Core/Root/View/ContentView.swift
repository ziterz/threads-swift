//
//  ContentView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel = ContentViewModel()
  
  var body: some View {
    Group {
      if viewModel.userSession != nil {
        ThreadsTabView()
      } else {
        LoginView()
      }
    }
  }
}

#Preview {
  ContentView()
}
