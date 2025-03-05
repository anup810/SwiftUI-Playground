//
//  DragSectionView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct DragSectionView: View {
    @State var endOffet: CGSize = .zero
    var body: some View {
            Section {
                NavigationLink("Drag Gesture  \n\"Go Back\"") {
                    // TODO: Drag gesture go back
                    DragGestureBounceBack()
                }
                NavigationLink("Drag Gesture  \n\"Stay Still\"") {
                    // TODO: Drag gesture Stay Still
                    DragGestureView()
                }
                NavigationLink {
                    // TODO: Drag gesture Store State
                    DragGestureStoreState(endOffset: $endOffet)
                } label: {
                    VStack(alignment:.leading){
                        Text("Drag Gesture")
                        Text("Store state")
                            .fontWeight(.thin)
                    }
                }
                
            } header: {
                Text("Drag Gesture Demo")
            }
      


    }
}

#Preview {
    DragSectionView()
}
