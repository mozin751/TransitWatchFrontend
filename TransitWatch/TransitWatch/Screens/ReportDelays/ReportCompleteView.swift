//
//  ReportCompleteView.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI
import ConfettiSwiftUI

struct ReportCompleteView: View {
  @Binding var currentPage: Int
  @State private var triggerConfetti: Int = 0
  var body: some View {
    VStack {
      Text("Report Submitted!")
        .font(Font.custom("Inter-SemiBold", size: 24))
        .foregroundStyle(Color.black)
      
      Spacer()
        .frame(height: 25)
      
      Text("Thank you for your contribution")
        .font(Font.custom("Inter-Regular", size: 20))
        .foregroundStyle(Color.black)
      
      Spacer()
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
      
      Button {
        currentPage = 0
      } label: {
        RoundedRectangle(cornerRadius: 8)
          .frame(width: 327, height: 40)
          .foregroundColor(Color.black)
          .overlay {
            Text("Submit Another Report")
              .font(Font.custom("Inter-Medium", size: 16))
              .foregroundColor(.white)
          }
      }
    }
    .confettiCannon(counter: $triggerConfetti,confettiSize: 20,
                    openingAngle: Angle(degrees: 0),
                    closingAngle: Angle(degrees: 180),
                    radius: 280)
    .onAppear {
      Task {
        triggerConfetti += 1
      }
    }
  }
}

#Preview {
  @State var current = 3
  return ReportCompleteView(currentPage: $current)
}
