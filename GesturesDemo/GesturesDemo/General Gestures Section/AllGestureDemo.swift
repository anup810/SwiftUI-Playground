//
//  AllGestureDemo.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct AllGestureDemo: View {
    @State private var offset: CGSize = .zero
    @State private var rotation: Double = 0.0
    @State private var scale: Double = 1.0
    var body: some View {
        VStack{
            TextView(
                text: "Hello, World",
                fgColor: .orange,
                bgColor: .black,
                radius: 20
            )
            .offset(offset)
            .scaleEffect(scale)
            .gesture(
                SequenceGesture( SimultaneousGesture(
                    DragGesture()
                        .onChanged({ value in
                            offset = value.translation
                        })
                        .onEnded({ value in
                            withAnimation(.spring()){
                                offset = .zero
                            }
                        })
                    , MagnificationGesture()
                        .onChanged({ value in
                            scale = value
                        })
                        .onEnded({ value in
                            withAnimation(.spring()){
                                scale = 1.0
                            }
                        })
                ), RotationGesture()
                    .onChanged({ value in
                        rotation = value.degrees
                    })
                        .onEnded({ _ in
                            withAnimation(.spring()){
                                rotation = 0.0
                            }
                        })
                      
                )
            )
            
            .navigationTitle("Rotate, Drag, Magnify")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NavigationStack {
        AllGestureDemo()
    }
}
