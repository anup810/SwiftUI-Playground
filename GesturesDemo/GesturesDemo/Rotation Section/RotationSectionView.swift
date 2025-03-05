//
//  RotationSectionView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI


struct RotationSectionView: View {
    @State var rotation: Double = 0.0
    var body: some View {
            Section {
                NavigationLink("Rotation Gesture  \n\"Go Back\"") {
                   
                    RotationGestureBounceBack()
                }
                NavigationLink("Rotation Gesture  \n\"Stay Still\"") {
                    
                    RotationGestureView()
                    
                }
                NavigationLink {
                    RotationStoreStateView(rotation: $rotation)
                    
                } label: {
                    VStack(alignment:.leading){
                        Text("Rotation Gesture")
                        Text("Store state")
                            .fontWeight(.thin)
                    }
                }
                
            } header: {
                Text("Rotation Gesture Demo")
            }
      


    }
}
#Preview {
    RotationSectionView()
}
