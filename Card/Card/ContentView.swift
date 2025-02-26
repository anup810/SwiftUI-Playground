//
//  ContentView.swift
//  Card
//
//  Created by Anup Saud on 2025-02-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color
                .black
                .opacity(0.7)
                .ignoresSafeArea()
            VStack{
                BuyNowView(price: 20, discountPercentage: 75)
                BuyNowView(price: 20)
            }
        }

    }
}

#Preview {
    ContentView()
}
