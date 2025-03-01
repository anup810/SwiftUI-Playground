//
//  ImageEample2.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-02-28.
//

import SwiftUI

struct ImageEample2: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(GeneralImages.allCases,id: \.self) { image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 20))
                        .padding()
                        .shadow(color: .blue, radius: 10)
                }
            }
        }
    }
}

#Preview {
    ImageEample2()
}
