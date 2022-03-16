//
//  Drawer.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-14.
//

import SwiftUI

struct DrawerContent: View {
    var body: some View {
        Color.gray
    }
}

struct NavigationDrawer: View {
    private let width = UIScreen.main.bounds.width - 100
    let isOpen: Bool
    
    var body: some View {
        HStack {
            DrawerContent()
                .frame(width: self.width)
                .offset(x: self.isOpen ? 0 : -self.width)
            Spacer()
        }
    }
}

struct Drawer: View {
    @State var isDrawerOpen: Bool = false
    
    var body: some View {
        ZStack {
            /// Navigation Bar Title part
            if !self.isDrawerOpen {
                NavigationView {
                    EmptyView()
                        .navigationBarTitle(Text("Navigation Drawer"))
                        .navigationBarItems(leading: Button(action: {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                self.isDrawerOpen.toggle()
                            }
                        }) {
                            Image(systemName: "sidebar.left")
                        })
                }
            }
            /// Navigation Drawer part
            NavigationDrawer(isOpen: self.isDrawerOpen)
         /// Other behaviors
        }.background(Color.white)
        .onTapGesture {
            if self.isDrawerOpen {
                self.isDrawerOpen.toggle()
            }
        }
    }
}
struct ContentView_Previews4: PreviewProvider {
  static var previews: some View {
      Drawer()
  }
}
