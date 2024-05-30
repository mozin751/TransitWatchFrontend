//
//  Fonts.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 29/05/24.
//

import Foundation
import SwiftUI


struct PoppinsFont {
  let weight: Int
  let italic: Bool

  var name: String {
    switch weight {
    case 100:
      return italic ? "Poppins-ThinItalic" : "Poppins-Thin"
    case 200:
      return italic ? "Poppins-ExtraLightItalic" : "Poppins-ExtraLight"
    // Add cases for other weights if needed
    case 300:
      return italic ? "Poppins-LightItalic" : "Poppins-Light"
    case 400:
      return italic ? "Poppins-Regular" : "Poppins-Regular"
    case 500:
      return italic ? "Poppins-MediumItalic" : "Poppins-Medium"
    case 600:
      return italic ? "Poppins-SemiBoldItalic" : "Poppins-SemiBold"
    case 700:
      return italic ? "Poppins-BoldItalic" : "Poppins-Bold"
    case 800:
      return italic ? "Poppins-ExtraBoldItalic" : "Poppins-ExtraBold"
    case 900:
      return italic ? "Poppins-BlackItalic" : "Poppins-Black"
    default:
      return italic ? "Poppins-Regular" : "Poppins-Regular" // Fallback to regular
    }
  }

  func font(size: CGFloat) -> Font {
    return Font.custom(name, size: size)
  }
}

extension Font {
  static func poppins(weight: Int, italic: Bool = false, size: CGFloat) -> Font {
    let poppinsFont = PoppinsFont(weight: weight, italic: italic)
    return poppinsFont.font(size: size)
  }
}
