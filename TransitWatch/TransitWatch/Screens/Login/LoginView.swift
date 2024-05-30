//
//  ContentView.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 28/05/24.
//

import SwiftUI

struct LoginView: View {
  @State private var username: String = ""
  
  var body: some View {
    ZStack {
      Image(.backgroundImg)
        .resizable()
        .ignoresSafeArea()
      
      VStack {
        Text("TransitWatch")
          .font(Font.custom("LCTPicon-Regular", size: 28))
          .foregroundStyle(.black)
        
        Spacer()
          .frame(minHeight: 10, idealHeight: 50)
          .fixedSize()
        
        Text("Login to your account")
          .font(Font.custom("Inter-SemiBold", size: 18))
          .foregroundStyle(.black)
        Text("Enter your email and password to login")
          .font(Font.custom("Inter-Regular", size: 18))
          .foregroundStyle(.black)
        LoginField(placeholder: "Email", text: $username)
          .cornerRadius(8)
      }
      .padding()
    }
  }
}

#Preview {
    LoginView()
}
