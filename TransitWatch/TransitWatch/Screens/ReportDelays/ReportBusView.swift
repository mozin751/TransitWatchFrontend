//
//  ReportBusView.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct ReportBusView: View {
  @Binding var currentPage: Int
  @Binding var backStatus: Bool
  @State var stationName: String = ""
  @State var busNumber: String = ""
  let busses = ["Red", "Green", "Blue", "Black", "Tartan"]
  
  var body: some View {
    VStack {
      Text("Which bus stop are you at?")
        .font(Font.custom("Inter-SemiBold", size: 18))
        .foregroundStyle(Color.black)
      TextInputView(placeholder: "Enter station", text: $stationName)
        .cornerRadius(8)
      
      Spacer()
        .frame(height: 40)
      
      Text("Which bus stop are you at?")
        .font(Font.custom("Inter-SemiBold", size: 18))
        .foregroundStyle(Color.black)
      DropDownView(inputList: busses, input: $busNumber, placeHolderText: "Select a Bus")
      
      Spacer()
        .frame(height: 40)
      
      Button {
        currentPage = 3
        backStatus = false
      } label: {
        RoundedRectangle(cornerRadius: 8)
          .frame(width: 327, height: 40)
          .foregroundColor(Color.black)
          .overlay {
            Text("Submit Report")
              .font(Font.custom("Inter-Medium", size: 16))
              .foregroundColor(.white)
          }
      }
    }
  }
}

#Preview {
  struct Preview: View {
          @State var number = 10
          @State var backStatus = false
          var body: some View {
            ReportBusView(currentPage: $number, backStatus: $backStatus)
          }
      }

      return Preview()
}
