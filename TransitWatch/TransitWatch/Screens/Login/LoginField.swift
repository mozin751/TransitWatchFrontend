//
//  LoginField.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import SwiftUI

struct LoginField: View {
  var placeholder: String
  @Binding var text: String

  var body: some View {
    HStack(spacing: 10) {
      Text(placeholder)
        .font(.poppins(weight: 500, size: 16))
        .fixedSize()

      Rectangle()
        .frame(width: 2, height: 20)

      TextField("", text: $text)
    }
    .padding()
    .clipShape(.capsule)
    .frame(width: 327, height: 40)
    .shadow(color: .white.opacity(0.7), radius: 7)
    .overlay(
      RoundedRectangle(cornerRadius: 8)
        .stroke(.gray, lineWidth: 1)
    )
    .background(Color.white)
  }
}

#Preview {
  @State var text = ""
  return LoginField(placeholder: "Email", text: $text)
}
