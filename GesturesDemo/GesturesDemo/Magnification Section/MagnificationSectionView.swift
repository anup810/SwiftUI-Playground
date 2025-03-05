//
//  MagnificationSectionView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct MagnificationSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0
    var body: some View {
            Section {
                NavigationLink("Magnification Gesture  \n\"Go Back\"") {
                    MagnificationBounceBackView()
                }
                NavigationLink("Magnification Gesture  \n\"Stay Still\"") {
                    MagnificationView()
                }
                NavigationLink {
                    MagnificationStoreStateView(scaleFactor: $scaleFactor)
                } label: {
                    VStack(alignment:.leading){
                        Text("Magnification Gesture")
                        Text("Store state")
                            .fontWeight(.thin)
                    }
                }
                
            } header: {
                Text("Manification Gesture Demo")
            }
      


    }
}

#Preview {
    NavigationStack {
        Form {
            MagnificationSectionView()
        }
    }
}
