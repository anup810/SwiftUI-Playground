//
//  ContentView.swift
//  Observed Object Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI
import Observation

@Observable
class SomeViewMode{
    var data1: String = "Hello World!"
    var data2 : String = "We love programming"
}

struct HelloView: View {
    @State var viewModel = SomeViewMode()
    var body: some View {
        VStack {

            Text(viewModel.data1)
            Text(viewModel.data2)
            Button {
                if viewModel.data1 == "Hello World!"{
                    viewModel.data1 = "Change"
                    viewModel.data2 = "Try Again"
                }else{
                    viewModel.data1 = "Hello World!"
                    viewModel.data2 = "We love programming"
                }
            
            } label: {
                Text("Click Me")
            }

        }
        .font(.largeTitle)
        .padding()
    }
}

struct RandomNumberView : View {
    @State private var randomNumber = 0
    var body: some View {
        VStack{
            Text("Random number is : \(randomNumber)")
            Button("Randomize number") {
                randomNumber = (0...1000).randomElement() ?? 0
                
            }
            HelloView()
        }
        .font(.title)
    }
}

#Preview {
   // HelloView()
    RandomNumberView()
}
