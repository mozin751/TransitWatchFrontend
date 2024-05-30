//
//  TextInputView.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct TextInputView: View {
  var placeholder: String
  @Binding var text: String

  var body: some View {
    HStack(spacing: 10) {
      TextField("", text: $text, prompt: Text(placeholder).foregroundColor(.gray))
        .foregroundColor(.black)
    }
    .padding()
    .clipShape(.capsule)
    .frame(width: 236, height: 40)
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
  return TextInputView(placeholder: "Email", text: $text)
}
