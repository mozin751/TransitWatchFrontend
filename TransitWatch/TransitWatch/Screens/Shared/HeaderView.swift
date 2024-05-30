//
//  HeaderView.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import SwiftUI

struct HeaderView: View {
  @Binding var showBackButton: Bool
  @State var headerText: String
  @Binding var currentPage: Int
  @State var addIcon = false
  
  var body: some View {
//    Spacer()
//      .frame(height: 100)
      HStack(alignment: .center) {
        Button {
          currentPage = 0
          showBackButton = false
        } label: {
          Image("BackArrow")
            .opacity(showBackButton ? 1 : 0)
        }
        Spacer()
        
        if !addIcon {
          Text(headerText)
            .font(Font.custom("Inter-SemiBold", size: 20))
            .foregroundStyle(.black)
        } else {
          switch currentPage {
            case 0:
              Text("Manage Schedule")
                .font(Font.custom("Inter-SemiBold", size: 20))
                .foregroundStyle(.black)
              
            case 1:
              Text("Add event")
                .font(Font.custom("Inter-SemiBold", size: 20))
                .foregroundStyle(.black)
          default:
            Text("Manage event")
              .font(Font.custom("Inter-SemiBold", size: 20))
              .foregroundStyle(.black)
          }
        }
        
        Spacer()

        Button {
          currentPage = 1
          showBackButton = true
        } label: {
          Image("AddIcon")
            .opacity(addIcon && currentPage == 0 ? 1 : 0)
        }
      }
      .frame(minWidth: nil, idealWidth: nil, maxWidth: nil, minHeight: 56, idealHeight: 56, maxHeight: 56, alignment: .center)
      .offset(y:-332)
      .padding(EdgeInsets.init(top: 4, leading: 16, bottom: 4, trailing: 16))
  }
}

#Preview {
  @State var showBackButton = true
  @State var num = 1
  return HeaderView(showBackButton: $showBackButton, headerText: "Header", currentPage: $num, addIcon: true)
}
