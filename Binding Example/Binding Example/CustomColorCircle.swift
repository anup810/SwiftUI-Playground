//
//  CustomColorCircle.swift
//  Binding Example
//
//  Created by Anup Saud on 2025-02-26.
//

import SwiftUI

struct CustomColorCircle: View {
    let text: String
    @Binding var selectedColor: Color
    let colors:[Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .purple,
        .yellow,
        .pink,
        .teal,
        .cyan,
        .indigo,
        .gray,
        .brown,
        .mint,
        .black,
        .white
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(colors,id: \.self){ color in
                        ColorCircle(color: color, isSelected: color == selectedColor)
                            .onTapGesture {
                                withAnimation {
                                    selectedColor = color
                                    print(selectedColor)
                                    
                                }
                            }
                    }
                    
                    
                }
                
            }
            .padding(.horizontal)
            .padding(.vertical, 6)
            .background(
                Color.gray
                    .opacity(0.2)
            )
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }
        .padding()
    }
}

#Preview {
    CustomColorCircle(text: "Color", selectedColor: .constant(.red))
}
