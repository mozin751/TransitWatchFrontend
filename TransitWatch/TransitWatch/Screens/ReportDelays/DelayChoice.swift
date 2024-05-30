//
//  DelayChoice.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct DelayChoice: View {
  @Binding var currentPage: Int
  @Binding var backStatus: Bool
  
  var body: some View {
    VStack {
      Text("Help us keep everyone informed\nby reporting any delays you\nencounter")
        .font(Font.custom("Inter-Regular", size: 20))
        .multilineTextAlignment(.center)
        .foregroundStyle(.black)
      Spacer()
        .frame(height: 150)
      Button {
        currentPage = 1
        backStatus = true
      } label: {
        RoundedRectangle(cornerRadius: 8)
          .frame(width: 327, height: 40)
          .foregroundColor(Color.black)
          .overlay {
            Text("Bus Delay")
              .font(Font.custom("Inter-Medium", size: 16))
              .foregroundColor(.white)
          }
      }
      Divider()
        .frame(width: 350, height: 50)
      
      Button {
        currentPage = 2
        backStatus = true
      } label: {
        RoundedRectangle(cornerRadius: 8)
          .frame(width: 327, height: 40)
          .foregroundColor(Color.black)
          .overlay {
            Text("Tube Delay")
              .font(Font.custom("Inter-Medium", size: 16))
              .foregroundColor(.white)
          }
      }
      
      Spacer()
        .frame(height: 15)
      
      Text("Help us keep everyone informed\nby reporting any delays you\nencounter")
        .font(Font.custom("Inter-Regular", size: 20))
        .multilineTextAlignment(.center)
        .opacity(0)
      
    }
  }
}

#Preview {
  struct Preview: View {
          @State var number = 10
          @State var backStatus = false
          var body: some View {
            DelayChoice(currentPage: $number, backStatus: $backStatus)
          }
      }

      return Preview()
}
