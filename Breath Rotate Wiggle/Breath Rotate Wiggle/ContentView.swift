//
//  ContentView.swift
//  Breath Rotate Wiggle
//
//  Created by Anup Saud on 2025-03-04.
//

import SwiftUI

struct ContentView: View {
    let symbol : [String] = [
        "leaf.arrow.trianglehead.clockwise", "square.and.arrow.up","accessibility"
    ]
    @State private var index = 0
    @State private var breathe = false
    @State private var rotate = false
    @State private var wiggle = false
    var currentSymbol : String {
        symbol[index]
    }
    var body: some View {
        VStack {
            Form{
                Section("Breathe"){
                    Button("Breathe") {
                        breathe.toggle()
                    }
                    HStack {
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.breathe, value: breathe)
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.breathe.pulse, value: breathe)
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.breathe.plain, value: breathe)
                    }
                }
                Section("Rotate") {
                    Button("Rotate") {
                        rotate.toggle()
                    }
                    HStack {
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.rotate.counterClockwise, value: rotate)
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.rotate.clockwise, value: rotate)
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.rotate.counterClockwise.wholeSymbol, value: rotate)
                    }
                }
                Section("Wiggle") {
                    Button("Wiggle") {
                        wiggle.toggle()
                    }
                    HStack {
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.wiggle.right, value: wiggle)
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.wiggle.left, value: wiggle)
                        SFSymbolView(text: currentSymbol)
                            .symbolEffect(.wiggle.right.byLayer, value: wiggle)
                    }
                }
            }
            Button("Change Symbol") {
                index += 1
                index %= symbol.count
            }
        }

    }
}

#Preview {
    ContentView()
}
