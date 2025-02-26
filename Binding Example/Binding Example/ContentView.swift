//
//  ContentView.swift
//  Binding Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

struct ContentView: View {
    @State private var color1: Color = .red
    @State private var color2: Color = .green
    @State private var color3: Color = .blue
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.2)
                .ignoresSafeArea()
            VStack {
                HStack{
                    RectangleView(color: color1)
                    RectangleView(color: color2)
                    RectangleView(color: color3)
                }
                CustomColorCircle(text: "Left Rectangle",selectedColor: $color1)
                CustomColorCircle(text: "Center Rectangle", selectedColor: $color2)
                CustomColorCircle(text: "Right Rectangle" ,selectedColor: $color3)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
