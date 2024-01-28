//
//  LoginView.swift
//  Threads
//
//  Created by Ziady Mubaraq on 28/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""
  
  var body: some View {
    NavigationStack {
      VStack {
        Spacer()
        
        Image("threads-app-icon")
          .resizable()
          .scaledToFit()
          .frame(width: 120, height: 120)
          .padding()
        
        VStack {
          TextField("Enter your email", text: $email)
            .autocapitalization(.none)
            .modifier(ThreadsTextFieldModifier())
          
          SecureField("Enter your email", text: $password)
            .modifier(ThreadsTextFieldModifier())
        }
        
        NavigationLink {
          Text("Forgot password")
        } label: {
          Text("Forgot Password?")
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.vertical)
            .padding(.trailing, 28)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        
        Button {
          
        } label: {
          Text("Login")
            .modifier(ThreadsButtonModifier())
        }
        
        Spacer()
        
        Divider()
        
        NavigationLink {
          RegistrationView()
            .navigationBarBackButtonHidden(true)
        } label: {
          HStack(spacing: 3) {
            Text("Don't have an account?")
            
            Text("Sign Up")
              .fontWeight(.semibold)
          }
          .foregroundColor(.black)
          .font(.footnote)
        }
        .padding(.vertical, 16)
      }
    }
  }
}

#Preview {
  LoginView()
}
