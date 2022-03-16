//
//  DataPassing.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-14.
//

import SwiftUI

struct DataPassing: View {
    @State var name: String = ""
    @State var age: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 30) {
                Text("Please enter your details below:")
                
                TextField("Name ", text: $name)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 250, height: 30)
                
                TextField("Age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 30)

                NavigationLink(destination: ResultView(name2: name, age2: age)) {
                    Text("Submit")
                }

            }
            .navigationTitle("Form")
        }
        
    }
}
struct ResultView: View {
    var name2: String
    var age2: String

    var body: some View {
        Text("Hi \(name2). You are \(age2) years old.")
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        DataPassing()
    }
}

// Refrence: https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui


