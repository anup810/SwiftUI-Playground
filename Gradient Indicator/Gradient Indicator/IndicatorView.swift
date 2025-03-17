//
//  IndicatorView.swift
//  Gradient Indicator
//
//  Created by Anup Saud on 2025-03-10.
//

import SwiftUI

struct IndicatorView: View {
    let width: CGFloat
    let height: CGFloat
    private var percentage: CGFloat
    let backgroundColor: Color
    
    var amount: CGFloat {
        max(0, min(width * percentage, width))
    }
    
    init(width: CGFloat, height: CGFloat, amount: CGFloat,  backgroundColor: Color) {
        self.width = width
        self.height = height
        self.percentage = max(0, min(amount / width, 1))
        self.backgroundColor = backgroundColor
    }
    init(width: CGFloat, height: CGFloat,  percentage: CGFloat, backgroundColor: Color) {
        self.width = width
        self.height = height
        self.percentage = max(0, min(percentage, 1))
        self.backgroundColor = backgroundColor
    }
    var barColor: LinearGradient{
        LinearGradient(colors: [.green,.blue,.indigo,.accentColor,.red,.purple], startPoint: .leading, endPoint: .trailing)
    }

    var body: some View {
        ZStack(alignment:.leading){
            Capsule()
                .fill(backgroundColor)
                .frame(width: width, height: height)
            Capsule()
                .fill(barColor)
                .frame(width: amount , height: height)
        }
    }
}

#Preview {
    VStack {
        IndicatorView(width: 200, height: 20, percentage: 0.7, backgroundColor: .gray)
        IndicatorView(width: 200, height: 20, amount: 100, backgroundColor: .gray)
    }
}
