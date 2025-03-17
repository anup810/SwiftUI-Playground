//
//  TestIndicatorView.swift
//  Gradient Indicator
//
//  Created by Anup Saud on 2025-03-10.
//

import SwiftUI

struct TestIndicatorView: View {
    @State private var percentage: CGFloat = 0.7
    var body: some View {
        VStack {
            Text("Gradient Indicator")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Spacer()
            IndicatorView(
                width: 200,
                height: 30,
                percentage: percentage,
                backgroundColor: .gray
            )
            Spacer()
            Slider(value: $percentage, in: 0...1)
            .padding()
        }
    }
}

#Preview {
    TestIndicatorView()
}
