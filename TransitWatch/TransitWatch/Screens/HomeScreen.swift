//
//  HomeScreen.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import SwiftUI

struct HomeScreen: View {
  @State var currentPage = 0
  @State var backStatus = false
    var body: some View {
      ZStack {
        Image(.backgroundImg)
          .resizable()
          .ignoresSafeArea()
        
        HeaderView(showBackButton: $backStatus, headerText: "Current Status", currentPage: $currentPage)
        
        Text("Dashboard")
          .font(.title)
          .foregroundStyle(.black)
      }
    }
}

#Preview {
    HomeScreen()
}
