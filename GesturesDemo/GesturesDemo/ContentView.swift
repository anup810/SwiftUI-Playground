//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                Text("Drag")
                Text("Rotate")
                Text("General")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
