//
//  ImageExample1.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-02-28.
//

import SwiftUI

struct ImageExample1: View {
    @State var ScaleToFit = true
    var framWidth: CGFloat? {
        ScaleToFit ? nil : UIScreen.main.bounds.width * 0.80
    }
    var framHeight: CGFloat?{
        ScaleToFit ? nil : UIScreen.main.bounds.height * 0.25
    }
    var aspectRatio: ContentMode{
        ScaleToFit ? .fit : .fill
    }
    var body: some View {
 
            Image(GeneralImages.imgLightening1.rawValue)
                .resizable()
                .frame(width: framWidth , height: framHeight)
                .aspectRatio(contentMode: aspectRatio)
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    
                    ScaleToFit.toggle()
                    
                }
        }
        
    }


#Preview {
    ImageExample1()
}
