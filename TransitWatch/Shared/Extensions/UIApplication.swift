//
//  UIApplication.swift
//  TransitWatch
//
//  Created by Muhammad Mohsin on 30/05/24.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
