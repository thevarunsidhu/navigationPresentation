//
//  HeaderView.swift
//  Presentation2305
//
//  Created by Varun Sidhu on 2022-03-09.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
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
    }
}
