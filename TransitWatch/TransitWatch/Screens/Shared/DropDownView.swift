//
//  DropDownView.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct DropDownView: View {
  let inputList: [String]
  @Binding var input: String
  let placeHolderText: String
  
    var body: some View {
      Menu {
        ForEach(inputList, id: \.self) { choice in
          Button(choice) {
            input = choice
          }
        }
      } label: {
        HStack(spacing: 0) {
          HStack {
            
            if input == "" {
              Text(placeHolderText)
                .font(Font.custom("Inter-Regular", size: 16))
                .padding(.leading, 10)
                .foregroundColor(.gray)
            } else {
              Text(input)
                .font(Font.custom("Inter-Regular", size: 16))
                .foregroundColor(.black)
                .padding(.leading, 10)
            }
            
            Spacer ()

            Image("DropDownArrow")
              .resizable()
              .frame(width: 20, height: 20)
          }
          .padding(.trailing, 5)
        }
        .frame(width: 236, height: 40)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay {
          RoundedRectangle(cornerRadius: 8)
            .stroke(.gray, lineWidth: 1)
        }
        .padding(.horizontal, 80)
        .padding(.bottom, 30)
//        .shadow(color: .gray.opacity(0.24), radius: 12, y: 9)
      }
    }
}

#Preview {
  @State var input = ""
  let busses = ["Red", "Green", "Blue", "Black", "Tartan"]
  return DropDownView(inputList: busses, input: $input, placeHolderText: "Enter bus name")
}
