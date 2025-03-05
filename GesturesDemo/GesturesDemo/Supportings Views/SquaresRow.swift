//
//  SquaresRow.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct SquaresRow: View {
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius : CGFloat
    init(colors: [Color] , dim: CGFloat = 50, cornerRadius: CGFloat = 5){
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    var body: some View {
        GridRow {
            ForEach(colors, id: \.self){ color in
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(color)
                    .frame(width: dim, height: dim)
 
                
            }
        }
    }
}

struct GradientBackground: View {
    let colors : [Color]
    let opacity: CGFloat
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        GradientBackground(colors: [.yellow,.indigo,.cyan], opacity: 0.4)
        Grid{
            ForEach(0..<10){ number in
                SquaresRow(colors: [.red,.green,.blue],
                           dim: CGFloat(number) * 7
                )
                
            }
            ForEach(0..<10){ number in
                SquaresRow(colors: [.red,.green,.blue],
                           dim: CGFloat(10-number) * 7
                )
                
            }

        }
    }
}
