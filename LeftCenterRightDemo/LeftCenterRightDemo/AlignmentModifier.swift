//
//  AlignmentModifier.swift
//  LeftCenterRightDemo
//
//  Created by Anup Saud on 2025-03-17.
//

import SwiftUI

//struct AlignmentModifier: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    AlignmentModifier()
//}
struct LeftAligned: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

extension View{
    func left() -> some View{
        self.modifier(LeftAligned())
    }
}

struct CenterAligned: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .center)
    }
}
extension View{
    func center() -> some View{
        self.modifier(CenterAligned())
    }
}

struct RightAligned: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
}
extension View{
    func right() -> some View{
        self.modifier(RightAligned())
    }
}
