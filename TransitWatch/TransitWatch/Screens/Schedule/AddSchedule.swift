//
//  AddSchedule.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct AddSchedule: View {
  @State var title: String = ""
  @State var date: String = ""
  @State var time: String = ""
  @State var location: String = ""
  @Binding var currentPage: Int
  @Binding var backStatus: Bool
  
    var body: some View {
      VStack(alignment: .leading) {
        Text("Event Title")
          .font(Font.custom("Inter-SemiBold", size: 18))
          .foregroundStyle(Color.black)
        TextInputView(placeholder: "Enter Title", text: $title)
          .cornerRadius(8)
        
        Spacer().frame(height: 30)
      
        Text("Date")
          .font(Font.custom("Inter-SemiBold", size: 18))
          .foregroundStyle(Color.black)
        TextInputView(placeholder: "Enter Date", text: $date)
          .cornerRadius(8)
        
        Spacer().frame(height: 30)
      
        Text("Time")
          .font(Font.custom("Inter-SemiBold", size: 18))
          .foregroundStyle(Color.black)
        TextInputView(placeholder: "Enter Time", text: $time)
          .cornerRadius(8)
        
        Spacer().frame(height: 30)
        
        Text("Location")
          .font(Font.custom("Inter-SemiBold", size: 18))
          .foregroundStyle(Color.black)
        TextInputView(placeholder: "Enter Location", text: $location)
          .cornerRadius(8)
        
        Spacer().frame(height: 30)
        
        Button {
          currentPage = 0
          backStatus = false
        } label: {
          RoundedRectangle(cornerRadius: 8)
            .frame(width: 237, height: 40)
            .foregroundColor(Color.black)
            .overlay {
              Text("Save")
                .font(Font.custom("Inter-Medium", size: 20))
                .foregroundColor(.white)
            }
        } .frame(alignment: .center)
        
        Button {
          currentPage = 0
          backStatus = false
        } label: {
          RoundedRectangle(cornerRadius: 8)
            .stroke(.black, lineWidth: 1)
            .background(Color.white)
            .frame(width: 237, height: 40)
            .overlay {
              Text("Cancel")
                .font(Font.custom("Inter-Medium", size: 20))
                .foregroundColor(.black)
            }
        } .frame(alignment: .center)
          .cornerRadius(8)
      }
    }
}

#Preview {
  @State var curPage = 1
  @State var backStatus = true
  return AddSchedule(currentPage: $curPage, backStatus: $backStatus)
}
