//
//  ImageExample4.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-02-28.
//

import SwiftUI

struct ImageExample4: View {
    let image = "https://images.unsplash.com/photo-1740387223785-6ab827ab4fb1?q=80&w=2022&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    var body: some View {
        AsyncImage(url: URL(string: image)){phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width * 0.80, height: UIScreen.main.bounds.height * 0.25)
                
            case .failure:
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                EmptyView()
            }
            
        }
            
    }
}

#Preview {
    ImageExample4()
}
