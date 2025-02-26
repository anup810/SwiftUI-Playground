//
//  ContentView.swift
//  State Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

struct ContentView: View {
    @State var bgColor: Color = .green
    var colorCollection : [Color] = [.green,
                                     .blue,
                                     .yellow,
                                     .red,
                                     .mint,
                                     .orange,
                                     .purple,
                                     .teal,
                                     .pink,
                                     .indigo
    ]
    var sunImageCollection :[String] = [
        "sun.horizon",
        "sun.max",
        "sunrise",
        "sunset",
        "moon.stars",
        "moon.circle",
        "moonphase.waning.gibbous",
        "cloud.sun",
        "cloud.moon"
    ]
    var moonImageCollection : [String] = [
        "moon",
        "moon.circle",
        "moon.stars",
        "moon.zzz",
        "moon.fill",
        "moonphase.new.moon",
        "moonphase.first.quarter",
        "moonphase.waxing.gibbous",
        "moonphase.full.moon",
        "moonphase.waning.crescent"
    ]
    @State var moonImageName: String = "moon.circle"
   @State var sunImangeName : String = "sun.horizon"
    var fontTitle: Font = .largeTitle
    var fontSubTitle: Font = .title
    @State var titleName: String = "State Example"
    @State var subTitileName: String = "Exploring State"
    @State var sunRotation : CGFloat = 0
    @State var moonRotation: CGFloat = 0
    var body: some View {
        ZStack {
            bgColor
                .opacity(0.8)
                .ignoresSafeArea()
                
            VStack{
            VStack(alignment: .leading) {
                Text(titleName)
                    .font(.largeTitle)
                Text(subTitileName)
                    .font(.largeTitle)
                Spacer()
            }
            .onTapGesture {
                if titleName == "State Example" {
                    titleName = "Hello"
                } else{
                    titleName = "State Example"
                }
            
                subTitileName = subTitileName == "Exploring State" ? "Happy Coding" : "Exploring State"
            }
 
                HStack {
                    Image(systemName: sunImangeName)
                        .imageScale(.large)
                        .rotationEffect(Angle(degrees: sunRotation))
   
                    Image(systemName: moonImageName)
                        .imageScale(.large)
                        .rotationEffect(Angle(degrees: moonRotation))
                }
                .foregroundStyle(.white)
                .onTapGesture {
                    sunRotation +=  90
                    moonRotation -= 90
                }
                Spacer()
            .padding()
                HStack {
                    Button("System Image")
                    {
                        
                        sunImangeName = sunImageCollection.randomElement() ?? "sun.horizon"
                        moonImageName = moonImageCollection.randomElement() ?? "moon.circle"
                        print(sunImangeName)
                        print(moonImageName)
                    } .foregroundStyle(.white)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                            .fill(.blue)
                        )
                    Spacer()
    
                Button("Background")
                   {

                       bgColor = colorCollection.randomElement() ?? .green
                } .foregroundStyle(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                    )
                }
                .padding()
            }
        }

    }
}

#Preview {
    ContentView()
}
