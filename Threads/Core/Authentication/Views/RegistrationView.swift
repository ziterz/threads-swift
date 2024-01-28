//
//  RegistrationView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
  @StateObject var viewModel = RegistrationViewModel()
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack {
      Spacer()
      
      Image("threads-app-icon")
        .resizable()
        .scaledToFit()
        .frame(width: 120, height: 120)
        .padding()
      
      VStack {
        TextField("Enter your email", text: $viewModel.email)
          .modifier(ThreadsTextFieldModifier())
        
        SecureField("Enter your email", text: $viewModel.password)
          .modifier(ThreadsTextFieldModifier())
        
        TextField("Enter your full name", text: $viewModel.fullname)
          .modifier(ThreadsTextFieldModifier())
        
        TextField("Enter your username", text: $viewModel.username)
          .modifier(ThreadsTextFieldModifier())
      }
      
      Button {
        Task { try await viewModel.createUser() }
      } label: {
        Text("Sign Up") 
          .modifier(ThreadsButtonModifier())
      }
      .padding(.vertical)
      
      Spacer()
      
      Divider()
      
      Button {
        dismiss()
      } label: {
        HStack(spacing: 3) {
          Text("Already have an account?")
          
          Text("Sign In")
            .fontWeight(.semibold)
        }
        .foregroundStyle(Color(.black))
        .font(.footnote)
      }
      .padding(.vertical, 16)
    }
  }
}

#Preview {
  RegistrationView()
}
