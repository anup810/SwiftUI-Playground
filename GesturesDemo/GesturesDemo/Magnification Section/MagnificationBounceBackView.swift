//
//  MagnificationBounceBackView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct MagnificationBounceBackView: View {
    @State private var scaleFactor : CGFloat = 1.0
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
                .gesture(
                    MagnificationGesture()
                        .onChanged({ value in
                            withAnimation(.spring()) {
                                scaleFactor = value
                            }
                            
                        })
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                scaleFactor = 1.0
                            }
                            
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
    MagnificationBounceBackView()
    
}
