//
//  ContentView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct GestureDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                DragSectionView()
                RotationSectionView()
                GeneralSectionView()
            }
            .navigationTitle("Gesture")
            
        }
    }
}

#Preview {
    GestureDemo()
}
