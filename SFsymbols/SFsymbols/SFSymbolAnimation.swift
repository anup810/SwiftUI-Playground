//
//  SFSymbolAnimation.swift
//  SFsymbols
//
//  Created by Anup Saud on 2025-03-03.
//

import SwiftUI

struct SFSymbolAnimation: View {
    @State private var clicked: Bool = false
    @State private var pauseGlobe: Bool = false
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "globe")
                    .imageScale(.large)
                    .symbolEffectsRemoved(pauseGlobe)
                    .symbolEffect(.bounce, value: clicked)
                    .padding()
                
                Image(systemName: "house.fill")
                    .imageScale(.large)
                    .symbolEffect(.wiggle, value: clicked)
                    .padding()
                
                Image(systemName: "moon.stars.fill")
                    .imageScale(.large)
                    .symbolEffect(.variableColor.cumulative, value: clicked)
                    .foregroundStyle(clicked ? .red : .black)
                    .padding()
                
                Image(systemName: "square.stack.3d.up")
                    .imageScale(.large)
                    .symbolEffect(.variableColor.cumulative, value: clicked)
                    .foregroundStyle(clicked ? .blue : .black)
                    .padding()
                
                Image(systemName: "square.stack.3d.up")
                    .imageScale(.large)
                    .symbolEffect(.variableColor.iterative, value: clicked)
                    .foregroundStyle(clicked ? .red : .black)
                    .padding()
                
                Image(systemName: clicked ? "person.crop.circle.badge" : "bolt.horizontal.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(clicked ? .blue : .gray.opacity(0.5))
                    .symbolEffect(.bounce.wholeSymbol,options: .repeat(3).speed(3), value: clicked)

                    .padding()
            }
            HStack {
                Button {
                    clicked.toggle()
                } label: {
                    Text("Click Me")
                        .font(.headline)
                        .foregroundStyle(.orange)
                        .bold()
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5)
                            .fill(.black)
                        )
                    
                    
                    
                }
                Button {
                    pauseGlobe.toggle()
                } label: {
                    Text(pauseGlobe ? "UnPause Globe" : "Pause Globe")
                        .font(.headline)
                        .foregroundStyle(pauseGlobe ? .red : .cyan)
                        .bold()
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 5)
                            .fill(.black)
                        )
                    
                    
                    
                }
            }


            

            
        }
    }
}

#Preview {
    SFSymbolAnimation()
}
