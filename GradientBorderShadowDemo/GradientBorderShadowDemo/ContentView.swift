//
//  ContentView.swift
//  GradientBorderShadowDemo
//
//  Created by Anup Saud on 2025-03-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("Hello, world!")
                .font(.title)
                .padding()
                .gradientBorderAndShadow(gradient: LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing), borderWidth: 3)
  
    }
}

struct RoundedCornerGradientShadow: ViewModifier{
    let radius: CGFloat
    let gradient: LinearGradient
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay {
                RoundedRectangle(cornerRadius: radius)
                    .stroke(gradient, lineWidth: 4 )
            }
            .shadow(color:shadowColor, radius: radius)
    }
}
extension View {
    func gradientBorderAndShadow(gradient: LinearGradient, borderWidth: CGFloat) -> some View{
        self.modifier(
            RoundedCornerGradientShadow(radius: 12, gradient: gradient, shadowColor: .gray.opacity(0.5), shadowRadius: 6)
        )
        
    }
}

#Preview {
    ContentView()
}
