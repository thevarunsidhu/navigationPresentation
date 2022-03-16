//
//  ContentView.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-07.
//
 
/*
 // BASIC NAVIGATION
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: SecondView(), label:{Text("Next Screen")})
            }.navigationTitle("First Page")
        }
    }
}

struct SecondView: View{
    var body: some View {
        ZStack{
            Text("Hello guys")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// Reference: https://www.youtube.com/watch?v=IopCl8sOyFA&t=358s
 


// DATA PASSING
import SwiftUI

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Refrence: https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui
 */
 
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Image(systemName: "info.circle")
                        .font(.system(size:42, weight: .light))
                    
                    Spacer()
                    
                    Image("logo")
                        .frame(height: 28)
                    
                    Spacer()
                    
                    Image(systemName: "questionmark.circle")
                        .font(.system(size:42, weight: .light))
                }
                
                Spacer()
                
                Image("Image")
                    .cornerRadius(15)
                    .frame(width: 300, height: 280)
                
                Image("Image")
                    .cornerRadius(15)
                    .frame(width: 300, height: 280)
                
                
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




