//
//  ScheduleDisplay.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import SwiftUI

struct ScheduleDisplay: View {
  @Binding var currentPage: Int
  
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        ScheduleCard(time: "10:00", title: "Lecture", location: "Huxley Building, Imperial College London", date: "31st Feb, 2024", currentPage: $currentPage)
      }
    }.frame(width:302)
  }
}

#Preview {
  @State var currentPage = 1
  return ScheduleDisplay(currentPage: $currentPage)
}
