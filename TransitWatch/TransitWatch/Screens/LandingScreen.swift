//
//  HomeScreen.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import SwiftUI

struct LandingScreen: View, KeyboardReadable {
  @State var selectedTab = 0
  @State private var keyboardIsVisible = false
  
  var body: some View {
    ZStack(alignment: .bottom) {
      TabView(selection: $selectedTab) {
        HomeScreen()
          .tag(0)
        
        
        ReportScreen()
          .tag(1)
        
        
        ScheduleScreen()
          .tag(2)
      }
      
      ZStack{
          HStack{
              ForEach((TabbedItems.allCases), id: \.self){ item in
                  Button{
                      selectedTab = item.rawValue
                  } label: {
                      CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                  }
              }
          }
          .padding(6)
      }
      .frame(height: 70)
      .background(.blue.opacity(0.2))
      .cornerRadius(35)
      .padding(.horizontal, 26)
      .opacity(keyboardIsVisible ? 0 : 1)
      .allowsHitTesting(keyboardIsVisible)
      .onReceive(keyboardPublisher) { newKeyboardIsVisible in
        keyboardIsVisible = newKeyboardIsVisible
      }
    }
  }
}

extension LandingScreen {
  func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
          HStack(spacing: 10){
              Spacer()
              Image(imageName)
                  .resizable()
                  .renderingMode(.template)
                  .foregroundColor(isActive ? .black : .gray)
                  .frame(width: 20, height: 20)
              if isActive{
                  Text(title)
                      .font(.system(size: 14))
                      .foregroundColor(isActive ? .black : .gray)
              }
              Spacer()
          }
          .frame(width: isActive ? 170 : 60, height: 60)
          .background(isActive ? .blue.opacity(0.4) : .clear)
          .cornerRadius(30)
      }
}

#Preview {
    LandingScreen()
}
