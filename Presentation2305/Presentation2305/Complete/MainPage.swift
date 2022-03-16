//
//  BasicNavigation.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-14.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Navigation")
                    .fontWeight(.bold)
                    .font(.system(size: 35))
                    .padding()
                
                HStack{
                    NavigationLink(destination: TabBar(), label:{Text("Tab Bar Navigation")})
                        .padding()
                }
                HStack{
                    NavigationLink(destination: DataPassing(), label:{Text("Data Parsing")})
                        .padding()
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

// Reference: https://www.youtube.com/watch?v=IopCl8sOyFA&t=358s
