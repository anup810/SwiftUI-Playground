//
//   Markdown_and_String_Interpolation_Demo.swift
//  Text Exploration
//
//  Created by Anup Saud on 2025-03-06.
//

import SwiftUI

struct Markdown_and_String_Interpolation_Demo: View {
    let rainbow = LinearGradient(
        colors: [
            .red,
            .orange,
            .yellow,
            .green,
            .blue,
            .purple,
            .pink
        ],
        startPoint: .leading,
        endPoint: .trailing
    )
    var rainbowWelcome: Text {
        Text("*Welcome*")
            .foregroundStyle(rainbow)
    }
    let programText = Text("**[programming](https://en.wikipedia.org/wiki/Computer_programming)**")
    
    var body: some View {
        Text("\(rainbowWelcome) to the wonderful world of \(programText).")
            .padding()
            .font(.largeTitle)
            .tint(.green)
            .multilineTextAlignment(.center)
    }
}
#Preview {
    Markdown_and_String_Interpolation_Demo()
}
