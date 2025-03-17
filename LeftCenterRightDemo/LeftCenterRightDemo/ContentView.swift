//
//  ContentView.swift
//  LeftCenterRightDemo
//
//  Created by Anup Saud on 2025-03-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Left")
                .left()
            Text("Center")
                .center()
            Text("Right")
                .right()
        }
        .font(.largeTitle)
        .padding()
    }
}

#Preview {
    ContentView()
}
