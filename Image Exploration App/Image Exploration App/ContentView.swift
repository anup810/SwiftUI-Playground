//
//  ContentView.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-02-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .onAppear{
                for i in 1...48{
                    print("\tcase img\(i)")
                }
            }
        

    }
}

#Preview {
    ContentView()
}
