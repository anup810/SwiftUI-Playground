//
//  ContentView.swift
//  BlurEffect Using Text Renderer
//
//  Created by Anup Saud on 2025-03-10.
//

import SwiftUI

enum RenderType: String, CaseIterable{
    case blur
    case wobble
}

struct ContentView: View {
    @State private var renderType: RenderType = .blur
    @State private var blur = 1.0
    let word = Image(systemName: "heart.fill")
    var helloWorld: Text{
        Text("Hello \(word) World")
            .font(.title3)
            .foregroundStyle(.red)
            .fontWeight(.semibold)
            .customAttribute(CustomAttr())
        
    }
    var body: some View {
        VStack {
            Picker("Render Type",selection: $renderType) {
                ForEach(RenderType.allCases, id: \.self){ type in
                    Text(type.rawValue)
                        .tag(type)
                    
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("Yet another \"\(helloWorld)\" example")
                .font(.title)
                .multilineTextAlignment(.center)
                .textRenderer(Renderer(value: blur, renderType: renderType))
            Spacer()
            
            Slider(value: $blur , in: 0...10)
        }
        .padding()
    }
}
struct Renderer: TextRenderer{
    let value :CGFloat
    let renderType: RenderType
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        let allLines = layout
            .flatMap({$0})
        for line in allLines{
            if line[CustomAttr.self] != nil{
                var localContext = ctx
                
                switch renderType {
                case .blur:
                    let blurEffect = GraphicsContext
                        .Filter.blur(radius: value)
                    localContext.addFilter(blurEffect)
                case .wobble:
                    let wobbleFilter = GraphicsContext
                        .Filter
                        .distortionShader(
                            ShaderLibrary.wobble(.float(value)),
                            maxSampleOffset: .zero
                        )
                    
                    localContext
                        .addFilter(wobbleFilter)
                }
                localContext
                    .draw(line)
                
            }else {
                let localContext = ctx
                localContext
                    .draw(line)
            }
        }
    }
    
    
}
struct CustomAttr: TextAttribute{
    //
}

#Preview {
    ContentView()
}
