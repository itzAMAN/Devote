//
//  ListRowItemView.swift
//  Devote
//
//  Created by AMAN SHARMA on 09/05/22.
//

import SwiftUI

struct ListRowItemView: View {
  // MARK: - PROPERTIES
  @Environment(\.managedObjectContext) var viewContext
  @ObservedObject var item: Item
  
  // MARK: - BODY
    var body: some View {
      Toggle(isOn: $item.completion) {
        Text(item.task ?? "")
          .font(.system(.title2, design: .rounded))
          .fontWeight(.heavy)
          .foregroundColor(item.completion ? Color.pink : Color.primary)
          .padding(.vertical, 12)
          .animation(.default)
      } //: TOGGLE
      .toggleStyle(CheckboxStyle())
      .onReceive(item.objectWillChange, perform: { _ in
        if self.viewContext.hasChanges {
          try? self.viewContext.save()
        }
      })
    }
}


