//
//  ImageExample5.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-03-01.
//

import SwiftUI

struct ImageExample5: View {
    let columns : [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(GridImages.allCases, id: \.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 20)

                }
            }.padding()
        }
    }
}

#Preview {
    ImageExample5()
}
