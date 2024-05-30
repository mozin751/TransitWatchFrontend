//
//  ScheduleCard.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct ScheduleCard: View {
  let time: String
  let title: String
  let location: String
  let date: String
  @Binding var currentPage: Int
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text(time)
        .font(Font.custom("Inter-SemiBold", size: 18))
        .foregroundStyle(Color.black)
        .frame(width: 250, alignment: .leading)
      Text(title)
        .font(Font.custom("Inter-SemiBold", size: 28))
        .foregroundStyle(Color.black)
        .frame(width: 250, alignment: .leading)
      Text(location)
        .font(Font.custom("Inter-SemiBold", size: 18))
        .foregroundStyle(Color.black)
        .frame(width: 250, alignment: .leading)
      HStack {
        Text(date)
          .font(Font.custom("Inter-Medium", size: 16))
          .foregroundStyle(Color.gray)
          .frame(width: 250, alignment: .leading)
        
        Spacer()
        
        Button {
          currentPage = 2
          modTitle = title
          modDate = date
          modTime = time
          modLocation = location
        } label: {
          Image("EditIcon")
            .frame(alignment: .trailing)
        }
      }
    }
    .frame(width: 283, alignment: .leading)
    .padding(.all, 16)
    .background(Color.white)
    .overlay(
      RoundedRectangle(cornerRadius: 8)
        .stroke(.gray, lineWidth: 1)
    )
    .cornerRadius(8)
  }
}

#Preview {
  @State var currentPage = 1
  return ScheduleCard(time: "10:00", title: "Lecture", location: "Huxley Building, Imperial College London", date: "31st Feb, 2024", currentPage: $currentPage)
}
