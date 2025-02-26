//
//  ColorCircle.swift
//  Binding Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let isSelected: Bool
    
    let selectedDim = 30.0
    let notSelectedDim = 20.0
    
    var dim: CGFloat{
        isSelected ? selectedDim : notSelectedDim
    }
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: dim, height: dim)
    }
}

#Preview {
    VStack{
        ColorCircle(color: .blue, isSelected: true)
        ColorCircle(color: .red, isSelected: false)
    }
}
