//
//  ContentView.swift
//  Mask
//
//  Created by Anup Saud on 2025-03-02.
//

import SwiftUI

struct ContentView: View {
    var color: LinearGradient {
        LinearGradient(colors: [.green, .orange], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    var body: some View {
        Text("Hello")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .overlay {
                color
                    .mask {
                        Text("Hello")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                    }
            }
           Text("Test")
            .foregroundStyle(color)
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .overlay {
               // color.mask(Image(systemName: "star.fill"))
                color.mask(Image(systemName: "star.fill"))
            }
  
    }
}

#Preview {
    ContentView()
}
