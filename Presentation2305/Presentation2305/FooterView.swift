//
//  FooterView.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-09.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        NavigationView {
            HStack {
                Image(systemName: "xmark.circle")
                    .font(.system(size:42, weight: .light))
                
                Spacer()
                
                NavigationLink(destination: ResultView(), label: {
                        Text("New Trip".uppercased())
                            .font(.system(.subheadline, design: .rounded))
                            .fontWeight(.heavy)
                            .padding(.horizontal, 93)
                            .padding(.vertical, 12)
                            .accentColor(Color.green)
                            .background(
                                Capsule().stroke(Color.green, lineWidth: 2)
                            )
                    })
                
                
                Spacer()
                
                Image(systemName: "heart.circle")
                    .font(.system(size:42, weight: .light))
                
                
            }
        }
    }
}

struct ResultView: View {
    var body: some View {
            Text("Hi")
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


