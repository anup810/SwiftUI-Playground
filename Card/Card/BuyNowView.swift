//
//  BuyNowView.swift
//  Card
//
//  Created by Anup Saud on 2025-02-25.
//

import SwiftUI

struct BuyNowView: View {
    @State var price: Double
    var discountPercentage: Int?
    var discount: Double?{
        if let discountPercentage {
            let percentageDiscounted = Double(discountPercentage) / 100 * price
           let discountedPrice = price - percentageDiscounted
            return discountedPrice
            
        }else {
            return nil
        }
    }
    let bgColor: Color
    let discountColor: Color
    let yOffset: Double
    let discountAngle: Double
    init(
        price: Double,
        discountPercentage: Int? = nil,
        bgColor: Color = .red,
        discountColor: Color = .blue,
        yOffset: Double = -20 ,
        discountAngle: Double = -10
    ) {
        self.price = price
        self.discountPercentage = discountPercentage
        self.bgColor = bgColor
        self.discountColor = discountColor
        self.yOffset = yOffset
        self.discountAngle = discountAngle
    }
    var body: some View {
        VStack{
            if let discountPercentage{
                Text("$\(discountPercentage) OFF!")
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding()
                    .background(discountColor)
                    .clipShape(.rect(cornerRadius: 15))
                    .rotationEffect(.degrees(discountAngle))
                    .offset(y:yOffset)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
            }
            HStack{
                Text("BUY NOW")
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Text("$\(price, specifier: "%.2f")")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .strikethrough(discount != nil)
                if let discount {
                    Text("\(discount, specifier: "%.2f")")
                        .font(.title)
                        .fontWeight(.semibold)
                }
       
                    
                
            }
            .padding()
           
        }
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(bgColor)
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.white)
            }
        )
        .padding()
        
       
    }

}

#Preview {
    ZStack{
        Color
            .black
            .opacity(0.7)
            .ignoresSafeArea()
        VStack {
            BuyNowView(price: 20.0,discountPercentage: 75)
            BuyNowView(price: 20.0,discountPercentage: nil)
        }
    }
}
