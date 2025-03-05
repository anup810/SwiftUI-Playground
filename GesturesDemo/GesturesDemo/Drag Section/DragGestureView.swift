//
//  DragGestureView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct DragGestureView: View {
    @State private var currentOffset: CGSize = .zero
    @State private var endOffset:CGSize = .zero
    
    var offset: CGSize{
        CGSize(
            width: currentOffset.width + endOffset.width,
            height: currentOffset.height + endOffset.height
        )
    }
    var body: some View {
        VStack{
            SquaresView()
            Spacer()
            TextView(
                text: "Hello World",
                fgColor: .orange.opacity(0.8),
                bgColor: .black.opacity(0.75),
                radius: 20
            )
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(.spring()) {
                            currentOffset = value.translation
                        }
                        
                    })
                    .onEnded(
                        { _ in
                            withAnimation(.spring()) {
                                endOffset = CGSize(
                                    width: currentOffset.width + endOffset.width,
                                    height: currentOffset.height + endOffset.height
                                )
                                
                                currentOffset = .zero
                            }

                    })
            )
            .onTapGesture {
                withAnimation(.spring()) {
                    endOffset = .zero
                    currentOffset = .zero
                }
            }
            Spacer()
        }
        .navigationTitle("Drag and Stay Still")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DragGestureView()
    }
}
