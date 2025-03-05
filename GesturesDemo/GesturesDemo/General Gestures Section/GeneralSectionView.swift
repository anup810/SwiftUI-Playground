//
//  GeneralSectionView.swift
//  GesturesDemo
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct GeneralSectionView : View {
    @State var endOffet: CGSize = .zero
    var body: some View {
            Section {
                NavigationLink("General Gesture") {
                    AllGestureDemo()
                    
                }
            } header: {
                Text("General Gesture Demo")
            }
      


    }
}

#Preview {
    GeneralSectionView()
}
