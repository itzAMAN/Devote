//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by AMAN SHARMA on 08/05/22.
//

import SwiftUI

#if canImport(UIKit)
extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
#endif
