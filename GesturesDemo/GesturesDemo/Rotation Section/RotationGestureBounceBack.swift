//
//  RotationGestureBounceBack.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct RotationGestureBounceBack: View {
    @State private var rotation: Double = 0.0
    var body: some View {
        NavigationStack{
            TextView(
                text: "Hello World",
                fgColor: .orange,
                bgColor: .black,
                radius: 20
            )
            .rotationEffect(Angle(degrees: rotation))
            .gesture(
                RotationGesture()
                    .onChanged({ value in
                        rotation = value.degrees
                    })
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            rotation = 0
                        }
                    })
            )
            
            .navigationTitle("Rotation Demo Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    RotationGestureBounceBack()
}
