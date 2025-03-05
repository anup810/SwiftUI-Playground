//
//  MagnificationGestureState.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct MagnificationGestureState: View {
    @GestureState private var scaleFactor : CGFloat = 1.0
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                TextView(
                    text: "Hello World!",
                    fgColor: .orange,
                    bgColor: .black,
                    radius: 20
                )
                .scaleEffect(scaleFactor)
                .animation(.spring(), value: scaleFactor)
                .gesture(
                    MagnificationGesture()
                        .updating($scaleFactor, body: { value, state, transaction in
                            state = value.magnitude
                        })
        
                )
                Spacer()
            }
            .navigationTitle("Magnify and Bounce Back")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    MagnificationGestureState()
}
