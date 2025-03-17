//
//  ContentView.swift
//  TostDemo
//
//  Created by Anup Saud on 2025-03-17.
//

import SwiftUI

struct ContentView: View {
    @State private var showTost:Bool = false
    let text : String
    var showTostPrompt:String{
        showTost ? "Hide Tost" : "Show Tost"
    }
    var body: some View {
  //      ZStack {
            Button {
                withAnimation {
                    showTost.toggle()
                }
            } label: {
                Text(showTostPrompt)
            }
            .tost(
                text: text,
                showTost: $showTost
            )
            
//            TostView(
//                text: text,
//                showTost: $showTost
//            )
//        }
        
    }
}


#Preview {
    ContentView(text: "Tost Text")
}
