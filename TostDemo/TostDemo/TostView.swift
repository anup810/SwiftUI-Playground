//
//  TostView.swift
//  TostDemo
//
//  Created by Anup Saud on 2025-03-17.
//

import SwiftUI

struct TostView: View {
    let text: String
    @Binding var showTost: Bool
    var body: some View {
            TextWithBackgroundView(text: text)
                .offset(y: showTost ? 0 : 100)
                .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct TostModifier : ViewModifier {
    let text: String
    @Binding var showTost: Bool
    func body(content: Content) -> some View {
        ZStack {
            content
            TextWithBackgroundView(text: text)
                .offset(y: showTost ? 0 : 100)
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
    

}

extension View{
    func tost(text: String, showTost: Binding<Bool>) -> some View{
        self
            .modifier(TostModifier(text: text, showTost: showTost))
    }
}

#Preview {
    TostView(text: "Tost Text", showTost: .constant(true))
}
