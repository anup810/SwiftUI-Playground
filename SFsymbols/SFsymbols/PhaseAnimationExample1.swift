//
//  PhaseAnimationExample1.swift
//  SFsymbols
//
//  Created by Anup Saud on 2025-03-04.
//

import SwiftUI

struct AnimateProperties: Equatable {
    let color: Color
    let bgColor: Color
    let font: Font
    let fontWeight: Font.Weight
    let cornerRadius: CGFloat
    let xScale: CGFloat
    let yScale: CGFloat
    let offsetY: CGFloat
    let rotate: CGFloat
}
struct PhaseAnimationExample1: View {
    @State private var animateMe = false
    let phase : [AnimateProperties] = [
        .init(
            color: .red,
            bgColor: .white,
            font: .title,
            fontWeight: .semibold,
            cornerRadius: 20,
            xScale: 1,
            yScale: 1,
            offsetY: 0,
            rotate: 0),
        
            .init(
                color: .red,
                bgColor: .black,
                font: .largeTitle,
                fontWeight: .semibold,
                cornerRadius: 20,
                xScale: 1,
                yScale: 1.5,
                offsetY: 0,
                rotate: 30),
            .init(
                color: .blue,
                bgColor: .gray,
                font: .body,
                fontWeight: .thin,
                cornerRadius: 0,
                xScale: 1.5,
                yScale: 1,
                offsetY: 50,
                rotate: 60),
            .init(
                color: .blue,
                bgColor: .gray,
                font: .body,
                fontWeight: .thin,
                cornerRadius: 100,
                xScale: 1.5,
                yScale: 1,
                offsetY: 10,
                rotate: 60),
            .init(
                color: .purple,
                bgColor: .black,
                font: .largeTitle,
                fontWeight: .bold,
                cornerRadius: 50,
                xScale: 1,
                yScale: 1,
                offsetY: -20,
                rotate: 0),
    ]
    var body: some View {
        VStack{
            Spacer()
            Text("Hello World!")
                .phaseAnimator(phase,trigger: animateMe) { View, phase in
                    View
                        .foregroundStyle(phase.color)
                        .font(phase.font)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: phase.cornerRadius)
                                .fill( phase.bgColor.gradient)
                        )
                        .scaleEffect(
                            x: phase.xScale,
                            y: phase.yScale)
                        .offset(y: phase.offsetY)
                        .rotation3DEffect(
                            Angle(degrees: phase.rotate),
                          axis: (x: 1.0, y: 0.0, z: 0.0)
                        )
                    
                }
            Spacer()
            Button {
                animateMe.toggle()
            } label: {
                Text(animateMe ? "Stop" : "Play")
            }

        }
    }
}

#Preview {
    PhaseAnimationExample1()
}
