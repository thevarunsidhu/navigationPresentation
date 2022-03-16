//
//  TabBar.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-14.
//

import SwiftUI

struct FirstPage: View{
    var body: some View {
        ZStack{
            Text("First Page")
        }
    }
}

struct SecondPage: View{
    var body: some View {
        ZStack{
            Text("Second Page")
        }
    }
}

struct TabBar: View {
    var body: some View {
        TabView {
            FirstPage()
                .tabItem {
                    Label("First", systemImage: "house.fill")
                }

            SecondPage()
                .tabItem {
                    Label("Second", systemImage: "note.text")
                }
        }
    }
}
                          
                          
struct ContentView_Previews3: PreviewProvider {
  static var previews: some View {
      TabBar()
  }
}

// https://www.hackingwithswift.com/quick-start/swiftui/adding-tabview-and-tabitem
