//
//  MagnificationView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct MagnificationView: View {
    @State private var scaleFactor: CGFloat = 1.0
    var body: some View {
        NavigationStack {
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
                    Text("Magnify and Stay Still")
                        .font(.subheadline)
                        .bold()
                }
            }
        }
       
    }

}

#Preview {
    MagnificationView()
}
