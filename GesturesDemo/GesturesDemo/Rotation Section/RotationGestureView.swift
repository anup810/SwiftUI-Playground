//
//  RotationGestureView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct RotationGestureView: View {
    @State private var rotation: Double = 0.0
    @State private var currentRotation: Double = 0.0
    
    var totalRotation: Double {
        currentRotation + rotation
    }
    var body: some View {
        NavigationStack{
            TextView(
                text: "Hello World",
                fgColor: .orange,
                bgColor: .black,
                radius: 20
            )
            .rotationEffect(Angle(degrees: totalRotation))
            .gesture(
                RotationGesture()
                    .onChanged({ value in
                        currentRotation = value.degrees
                    })
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            rotation += currentRotation
                            
                            currentRotation = 0
                        }
                    })
            )
            .onTapGesture {
                withAnimation(.spring()) {
                    rotation = 0
                    currentRotation = 0
                }

            }
            
            .navigationTitle("Rotation Stay Still Demo")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    RotationGestureView()
}
