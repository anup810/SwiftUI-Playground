//
//  ImageExample3.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-02-28.
//

import SwiftUI

struct ImageExample3: View {
    @State var showName = false
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(GeneralImages.allCases,id: \.self) { image in
                    let name = image.rawValue
                    let nameWithoutImg = name.replacingOccurrences(of: "img", with: "")
                    Image(name)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.80 , height: UIScreen.main.bounds.height * 0.25)
                        .scaledToFill()
                        .clipShape(.rect(cornerRadius: 20))
                        .shadow(color: .blue, radius: 10)
                        .overlay {
                            Text(showName ? nameWithoutImg.capitalized : "")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .shadow(color: .white.opacity(0.7), radius: 5,x: 5,y:5)
                        }
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 1)) {
                                showName.toggle()
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    ImageExample3()
}
