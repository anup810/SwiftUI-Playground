//
//  DragGestureBounceBack.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct DragGestureBounceBack: View {
    @State private var offset: CGSize = .zero
    var body: some View {
        VStack{
            SquaresView()
            Spacer()
            TextView(
                text: "Hello World",
                fgColor: .orange,
                bgColor: .black.opacity(0.8),
                radius: 20
            )
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        offset = value.translation
                    })
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            offset = .zero
                        }
                       
                    })
            )
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Drag and Bounce Back")
                    .font(.subheadline)
                    .bold()
            }
        }
  
    }
}

#Preview {
    NavigationStack {
        DragGestureBounceBack()
    }
}
