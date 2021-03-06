//
//  ContentView.swift
//  Shared
//
//  Created by 조상호 on 2021/08/24.
//

import SwiftUI

struct ContentView: View {
  #if os(iOS)
  @Environment(\.horizontalSizeClass)
  var horizontalSizeClass
  #endif


  @ViewBuilder
  var body: some View {
      #if os(iOS)
      CoursesView()
      #else
      SideBar()
        .frame(minWidth: 1000, minHeight: 600)
      #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
      }
    }
}
