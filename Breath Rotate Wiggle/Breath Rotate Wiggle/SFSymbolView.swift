//
//  SFSymbolView.swift
//  Breath Rotate Wiggle
//
//  Created by Anup Saud on 2025-03-04.
//

import SwiftUI

struct SFSymbolView: View {
    let text: String
    var body: some View {
        Image(systemName: text)
            .imageScale(.large)
            .bold()
            .symbolRenderingMode(.multicolor)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    SFSymbolView(text: "leaf.arrow.trianglehead.clockwise")
}
