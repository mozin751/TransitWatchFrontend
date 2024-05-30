//
//  ReportScreen.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import SwiftUI

struct ReportScreen: View {
  @State var currentPage = 0
  @State var backStatus = false
  
  var body: some View {
    ZStack {
      Image(.backgroundImg)
        .resizable()
        .ignoresSafeArea()
      
      HeaderView(showBackButton: $backStatus, headerText: "Report Delays", currentPage: $currentPage)
      
      switch currentPage {
        case 0:
          DelayChoice(currentPage: $currentPage,  backStatus: $backStatus)
        case 1:
          ReportBusView(currentPage: $currentPage,  backStatus: $backStatus)
        case 2:
          ReportTubeView(currentPage: $currentPage,  backStatus: $backStatus)
        case 3:
          ReportCompleteView(currentPage: $currentPage)
        default:
          DelayChoice(currentPage: $currentPage,  backStatus: $backStatus)
      }
    }
  }
}

#Preview {
    ReportScreen()
}
