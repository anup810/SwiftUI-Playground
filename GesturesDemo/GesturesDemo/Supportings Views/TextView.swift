//
//  TextViewExample.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct TextView: View {
    let text: String
    let fgColor: Color
    let bgColor: Color
    let radius: CGFloat
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundStyle(fgColor)
            .padding()
            .background(bgColor)
            .clipShape(.rect(cornerRadius: radius))
    }
}

#Preview {
    TextView(
        text: "Hello World!",
        fgColor: .orange,
        bgColor: .black,
        radius: 20
    )
}
