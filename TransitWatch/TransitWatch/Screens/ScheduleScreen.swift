//
//  ScheduleManageScreen.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import SwiftUI

struct ScheduleScreen: View {
  @State var currentPage = 0
  @State var backStatus = false
  @State var showAdd = true
  
    var body: some View {
      ZStack {
        Image(.backgroundImg)
          .resizable()
          .ignoresSafeArea()
        
        HeaderView(showBackButton: $backStatus, headerText: "Manage Schedule", currentPage: $currentPage, addIcon: showAdd)
        
        VStack {
          Spacer().frame(height: 80)
          switch currentPage {
            case 0:
              ScheduleDisplay(currentPage: $currentPage)
            case 1:
              AddSchedule(currentPage: $currentPage, backStatus: $backStatus)
            default:
              AddSchedule(title: modTitle, date: modDate, time: modTime, location: modLocation, currentPage: $currentPage, backStatus: $backStatus)
          }
          
        }
      }
      .onTapGesture {
        UIApplication.shared.endEditing()
      }
    }
}

#Preview {
    ScheduleScreen()
}
