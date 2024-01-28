//
//  RegistrationView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
  @State private var email = ""
  @State private var password = ""
  @State private var fullname = ""
  @State private var username = ""
  
  var body: some View {
    VStack {
      Spacer()
      
      Image("threads-app-icon")
        .resizable()
        .scaledToFit()
        .frame(width: 120, height: 120)
        .padding()
      
      VStack {
        TextField("Enter your email", text: $email)
          .modifier(ThreadsTextFieldModifier())
        
        SecureField("Enter your email", text: $password)
          .modifier(ThreadsTextFieldModifier())
        
        TextField("Enter your full name", text: $fullname)
          .modifier(ThreadsTextFieldModifier())
        
        TextField("Enter your username", text: $username)
          .modifier(ThreadsTextFieldModifier())
      }
      
      Button {
        
      } label: {
        Text("Sign Up") 
          .modifier(ThreadsButtonModifier())
      }
      .padding(.vertical)
      
      Spacer()
      
      Divider()
      
      Button {
        
      } label: {
        HStack(spacing: 3) {
          Text("Already have an account?")
          
          Text("Sign In")
            .fontWeight(.semibold)
        }
        .foregroundColor(.black)
        .font(.footnote)
      }
      .padding(.vertical, 16)
    }
  }
}

#Preview {
  RegistrationView()
}
