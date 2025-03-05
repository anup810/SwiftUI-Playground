//
//  ContentView.swift
//  Zoom Transition
//
//  Created by Anup Saud on 2025-03-05.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var namespace
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink {
                    ZStack{
                        Color.cyan.opacity(0.3).ignoresSafeArea()
                        Text("Destination View")
                            .font(.title)
                            .navigationTransition(.zoom(sourceID: "idHello", in: namespace))
                    }
                } label: {
                    Text("Hello World")
                        .font(.largeTitle)
                        .bold()
                        .fontWidth(.expanded)
                        .matchedTransitionSource(id: "idHello", in: namespace)
                }
                NavigationLink {
                    Text("Test Destination")
                        .navigationTransition(.zoom(sourceID: "idHello", in: namespace))
                } label: {
                    Text("Test")
                        .font(.largeTitle)
                        .bold()
                        .fontWidth(.expanded)
                        .matchedTransitionSource(id: "idHello", in: namespace)
                }

            }

        }

    }
}

#Preview {
    ContentView()
}
