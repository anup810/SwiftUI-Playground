//
//  ImageExample6.swift
//  Image Exploration App
//
//  Created by Anup Saud on 2025-03-01.
//

import SwiftUI

struct ImageExample6: View {
    @State var meditating : Bool = false
    let bgcolor = LinearGradient(colors: [.blue.opacity(0.2),.pink.opacity(0.2),], startPoint: .topTrailing, endPoint: .bottomLeading)
    var body: some View {
        ZStack{
            bgcolor
                .ignoresSafeArea()
            VStack{
                Image(GeneralImages.imgSunset1.rawValue)
                    .resizable()
                    .frame(width: 250)
                    .clipShape(Circle())
                    .overlay {
                        Text(meditating ? "Pause" : "Start")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.horizontal,10)
                            .padding(.vertical,5)
                            .foregroundStyle(.green)
                            .background(Color.blue)
                            .clipShape(.rect(cornerRadius: 20))
                    }
                    .onTapGesture {
                        withAnimation {
                            meditating.toggle()
                        }
                       
                    }
            }

  
        }
        
    }
}

#Preview {
    ImageExample6()
}
