//
//  MagnificationStoreStateView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI


struct MagnificationStoreStateView: View {
    @Binding var scaleFactor: CGFloat
    var body: some View {
            VStack{
                Spacer()
                TextView(
                    text: "Hello World",
                    fgColor: .orange,
                    bgColor: .black,
                    radius: 20
                )
                .scaleEffect(scaleFactor)
                .gesture(MagnificationGesture()
                    .onChanged({ value in
                        withAnimation {
                            scaleFactor = value
                        }
                    })
                )
                Spacer()
                
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Magnify and Store State")
                        .font(.subheadline)
                        .bold()
                }
            }

       
    }

}

#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1.0))
}
