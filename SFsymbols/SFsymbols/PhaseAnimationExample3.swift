//
//  PhaseAnimationExample3.swift
//  SFsymbols
//
//  Created by Anup Saud on 2025-03-04.
//

import SwiftUI

struct PhaseAnimationExample3: View {
    @State private var animateMe: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .phaseAnimator(Phase.allCases,
                               trigger: animateMe) { view, phase in
                    view
                        .font(phase == .start ? .subheadline : .largeTitle)
                        .blur(radius: phase == .end ? 10 : 0)
                        .foregroundStyle(phase == .middle ? .red : .blue)
            }
            
            Spacer()
            
            Button(action: {
                animateMe.toggle()
            }, label: {
                Text( animateMe ? "Stop" : "Play" )
            })
            
        }

    }
}

enum Phase: CaseIterable {
    case start, middle, end
}
#Preview {
    PhaseAnimationExample3()
}
